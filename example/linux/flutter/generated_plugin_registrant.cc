//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <deposits_ui_kit/deposits_ui_kit_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) deposits_ui_kit_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DepositsUiKitPlugin");
  deposits_ui_kit_plugin_register_with_registrar(deposits_ui_kit_registrar);
}
