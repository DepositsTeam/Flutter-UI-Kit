import 'package:flutter_test/flutter_test.dart';
import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit/deposits_ui_kit_platform_interface.dart';
import 'package:deposits_ui_kit/deposits_ui_kit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDepositsUiKitPlatform
    with MockPlatformInterfaceMixin
    implements DepositsUiKitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DepositsUiKitPlatform initialPlatform = DepositsUiKitPlatform.instance;

  test('$MethodChannelDepositsUiKit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDepositsUiKit>());
  });

  test('getPlatformVersion', () async {
    DepositsUiKit depositsUiKitPlugin = DepositsUiKit();
    MockDepositsUiKitPlatform fakePlatform = MockDepositsUiKitPlatform();
    DepositsUiKitPlatform.instance = fakePlatform;

    expect(await depositsUiKitPlugin.getPlatformVersion(), '42');
  });
}
