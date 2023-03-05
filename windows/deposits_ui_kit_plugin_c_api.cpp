#include "include/deposits_ui_kit/deposits_ui_kit_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "deposits_ui_kit_plugin.h"

void DepositsUiKitPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  deposits_ui_kit::DepositsUiKitPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
