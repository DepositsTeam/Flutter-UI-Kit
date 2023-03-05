#ifndef FLUTTER_PLUGIN_DEPOSITS_UI_KIT_PLUGIN_H_
#define FLUTTER_PLUGIN_DEPOSITS_UI_KIT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace deposits_ui_kit {

class DepositsUiKitPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DepositsUiKitPlugin();

  virtual ~DepositsUiKitPlugin();

  // Disallow copy and assign.
  DepositsUiKitPlugin(const DepositsUiKitPlugin&) = delete;
  DepositsUiKitPlugin& operator=(const DepositsUiKitPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace deposits_ui_kit

#endif  // FLUTTER_PLUGIN_DEPOSITS_UI_KIT_PLUGIN_H_
