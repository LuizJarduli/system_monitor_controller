# system_monitor_platform_interface

A common platform interface for the `system_monitor_controller` plugin.

This interface allows specific implementations of the `system_monitor_controller` plugin, as well as the plugin itself, to ensure they are implemented using the same interface.

## Usage

To implement a new platform, follow these steps:

1. Create a new platform interface class that extends `SystemMonitorControllerPlatform`.
2. Implement the platform-specific methods in the new class.
3. Register the new platform implementation in the `SystemMonitorControllerPlugin` class.

## Platform Implementations

to be continued...