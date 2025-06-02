import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:system_monitor_controller_platform_interface/system_monitor_controller_platform_interface.dart';

/// An implementation of [SystemMonitorControllerPlatform] that uses
/// method channels.
class MethodChannelSystemMonitorController
    extends SystemMonitorControllerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_monitor_controller');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
