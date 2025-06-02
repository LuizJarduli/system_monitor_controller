import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:system_monitor_controller/system_monitor_controller_method_channel.dart';

abstract class SystemMonitorControllerPlatform extends PlatformInterface {
  /// Constructs a SystemMonitorControllerPlatform.
  SystemMonitorControllerPlatform() : super(token: _token);

  static final Object _token = Object();

  static SystemMonitorControllerPlatform _instance =
      MethodChannelSystemMonitorController();

  /// The default instance of [SystemMonitorControllerPlatform] to use.
  ///
  /// Defaults to [MethodChannelSystemMonitorController].
  static SystemMonitorControllerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SystemMonitorControllerPlatform]
  /// when they register themselves.
  static set instance(SystemMonitorControllerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
