import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'deposits_ui_kit_platform_interface.dart';

/// An implementation of [DepositsUiKitPlatform] that uses method channels.
class MethodChannelDepositsUiKit extends DepositsUiKitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('deposits_ui_kit');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
