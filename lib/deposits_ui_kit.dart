
import 'deposits_ui_kit_platform_interface.dart';

class DepositsUiKit {
  Future<String?> getPlatformVersion() {
    return DepositsUiKitPlatform.instance.getPlatformVersion();
  }
}
