
import 'plugintesterbyshantanu_platform_interface.dart';

class Plugintesterbyshantanu {
  Future<String?> getPlatformVersion() {
    return PlugintesterbyshantanuPlatform.instance.getPlatformVersion();
  }
}
