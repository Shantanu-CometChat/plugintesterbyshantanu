import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugintesterbyshantanu_method_channel.dart';

abstract class PlugintesterbyshantanuPlatform extends PlatformInterface {
  /// Constructs a PlugintesterbyshantanuPlatform.
  PlugintesterbyshantanuPlatform() : super(token: _token);

  static final Object _token = Object();

  static PlugintesterbyshantanuPlatform _instance = MethodChannelPlugintesterbyshantanu();

  /// The default instance of [PlugintesterbyshantanuPlatform] to use.
  ///
  /// Defaults to [MethodChannelPlugintesterbyshantanu].
  static PlugintesterbyshantanuPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PlugintesterbyshantanuPlatform] when
  /// they register themselves.
  static set instance(PlugintesterbyshantanuPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
