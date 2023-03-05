import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'deposits_ui_kit_method_channel.dart';

abstract class DepositsUiKitPlatform extends PlatformInterface {
  /// Constructs a DepositsUiKitPlatform.
  DepositsUiKitPlatform() : super(token: _token);

  static final Object _token = Object();

  static DepositsUiKitPlatform _instance = MethodChannelDepositsUiKit();

  /// The default instance of [DepositsUiKitPlatform] to use.
  ///
  /// Defaults to [MethodChannelDepositsUiKit].
  static DepositsUiKitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DepositsUiKitPlatform] when
  /// they register themselves.
  static set instance(DepositsUiKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
