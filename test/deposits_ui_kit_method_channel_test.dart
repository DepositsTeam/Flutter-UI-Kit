import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deposits_ui_kit/deposits_ui_kit_method_channel.dart';

void main() {
  MethodChannelDepositsUiKit platform = MethodChannelDepositsUiKit();
  const MethodChannel channel = MethodChannel('deposits_ui_kit');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
