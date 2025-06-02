import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:system_monitor_controller/system_monitor_controller.dart';
import 'package:system_monitor_controller_platform_interface/system_monitor_controller_method_channel.dart';
import 'package:system_monitor_controller_platform_interface/system_monitor_controller_platform_interface.dart';

class MockSystemMonitorControllerPlatform
    with MockPlatformInterfaceMixin
    implements SystemMonitorControllerPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final initialPlatform = SystemMonitorControllerPlatform.instance;

  test('$MethodChannelSystemMonitorController is the default instance', () {
    expect(
      initialPlatform,
      isInstanceOf<MethodChannelSystemMonitorController>(),
    );
  });

  test('getPlatformVersion', () async {
    final systemMonitorControllerPlugin = SystemMonitorController();
    final fakePlatform = MockSystemMonitorControllerPlatform();
    SystemMonitorControllerPlatform.instance = fakePlatform;

    expect(await systemMonitorControllerPlugin.getPlatformVersion(), '42');
  });
}
