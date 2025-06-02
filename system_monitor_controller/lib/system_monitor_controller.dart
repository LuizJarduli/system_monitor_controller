import 'package:system_monitor_controller_platform_interface/system_monitor_controller_platform_interface.dart';

class SystemMonitorController {
  Future<String?> getPlatformVersion() {
    return SystemMonitorControllerPlatform.instance.getPlatformVersion();
  }
}
