#include "include/plugintesterbyshantanu/plugintesterbyshantanu_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "plugintesterbyshantanu_plugin.h"

void PlugintesterbyshantanuPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  plugintesterbyshantanu::PlugintesterbyshantanuPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
