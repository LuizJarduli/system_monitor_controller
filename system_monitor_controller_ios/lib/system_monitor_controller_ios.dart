import 'package:flutter/foundation.dart';
import 'package:system_monitor_controller_platform_interface/system_monitor_controller_method_channel.dart';
import 'package:system_monitor_controller_platform_interface/system_monitor_controller_platform_interface.dart';

class SystemMonitorControllerIos extends SystemMonitorControllerPlatform {
  SystemMonitorControllerIos({
    @visibleForTesting MethodChannelSystemMonitorController? channelApi,
  }) : _channelApi = channelApi ?? MethodChannelSystemMonitorController();

  final MethodChannelSystemMonitorController _channelApi;

  static void registerWith() {
    SystemMonitorControllerPlatform.instance = SystemMonitorControllerIos();
  }

  @override
  Future<String?> getPlatformVersion() {
    return _channelApi.getPlatformVersion();
  }
}
