import 'package:flutter_test/flutter_test.dart';
import 'package:plugintesterbyshantanu/plugintesterbyshantanu.dart';
import 'package:plugintesterbyshantanu/plugintesterbyshantanu_platform_interface.dart';
import 'package:plugintesterbyshantanu/plugintesterbyshantanu_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlugintesterbyshantanuPlatform
    with MockPlatformInterfaceMixin
    implements PlugintesterbyshantanuPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PlugintesterbyshantanuPlatform initialPlatform = PlugintesterbyshantanuPlatform.instance;

  test('$MethodChannelPlugintesterbyshantanu is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlugintesterbyshantanu>());
  });

  test('getPlatformVersion', () async {
    Plugintesterbyshantanu plugintesterbyshantanuPlugin = Plugintesterbyshantanu();
    MockPlugintesterbyshantanuPlatform fakePlatform = MockPlugintesterbyshantanuPlatform();
    PlugintesterbyshantanuPlatform.instance = fakePlatform;

    expect(await plugintesterbyshantanuPlugin.getPlatformVersion(), '42');
  });
}
