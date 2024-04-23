import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugintesterbyshantanu_platform_interface.dart';

/// An implementation of [PlugintesterbyshantanuPlatform] that uses method channels.
class MethodChannelPlugintesterbyshantanu extends PlugintesterbyshantanuPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugintesterbyshantanu');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
