#include "include/deposits_ui_kit/deposits_ui_kit_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <sys/utsname.h>

#include <cstring>

#define DEPOSITS_UI_KIT_PLUGIN(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), deposits_ui_kit_plugin_get_type(), \
                              DepositsUiKitPlugin))

struct _DepositsUiKitPlugin {
  GObject parent_instance;
};

G_DEFINE_TYPE(DepositsUiKitPlugin, deposits_ui_kit_plugin, g_object_get_type())

// Called when a method call is received from Flutter.
static void deposits_ui_kit_plugin_handle_method_call(
    DepositsUiKitPlugin* self,
    FlMethodCall* method_call) {
  g_autoptr(FlMethodResponse) response = nullptr;

  const gchar* method = fl_method_call_get_name(method_call);

  if (strcmp(method, "getPlatformVersion") == 0) {
    struct utsname uname_data = {};
    uname(&uname_data);
    g_autofree gchar *version = g_strdup_printf("Linux %s", uname_data.version);
    g_autoptr(FlValue) result = fl_value_new_string(version);
    response = FL_METHOD_RESPONSE(fl_method_success_response_new(result));
  } else {
    response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());
  }

  fl_method_call_respond(method_call, response, nullptr);
}

static void deposits_ui_kit_plugin_dispose(GObject* object) {
  G_OBJECT_CLASS(deposits_ui_kit_plugin_parent_class)->dispose(object);
}

static void deposits_ui_kit_plugin_class_init(DepositsUiKitPluginClass* klass) {
  G_OBJECT_CLASS(klass)->dispose = deposits_ui_kit_plugin_dispose;
}

static void deposits_ui_kit_plugin_init(DepositsUiKitPlugin* self) {}

static void method_call_cb(FlMethodChannel* channel, FlMethodCall* method_call,
                           gpointer user_data) {
  DepositsUiKitPlugin* plugin = DEPOSITS_UI_KIT_PLUGIN(user_data);
  deposits_ui_kit_plugin_handle_method_call(plugin, method_call);
}

void deposits_ui_kit_plugin_register_with_registrar(FlPluginRegistrar* registrar) {
  DepositsUiKitPlugin* plugin = DEPOSITS_UI_KIT_PLUGIN(
      g_object_new(deposits_ui_kit_plugin_get_type(), nullptr));

  g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
  g_autoptr(FlMethodChannel) channel =
      fl_method_channel_new(fl_plugin_registrar_get_messenger(registrar),
                            "deposits_ui_kit",
                            FL_METHOD_CODEC(codec));
  fl_method_channel_set_method_call_handler(channel, method_call_cb,
                                            g_object_ref(plugin),
                                            g_object_unref);

  g_object_unref(plugin);
}
