import 'package:local_auth/local_auth.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class BiometricService with ListenableServiceMixin {
  LocalAuthentication localAuth = LocalAuthentication();

  bool _isBiometricsAvailable = false;
  bool get isBiometricsAvailable => _isBiometricsAvailable;

  bool _isDeviceSupported = false;
  bool get isDeviceSupported => _isDeviceSupported;

  List<BiometricType> _biometricType = [];
  List<BiometricType> get biometricType => _biometricType;

  BiometricService() {
    listenToReactiveValues(
        [_isBiometricsAvailable, _isDeviceSupported, _biometricType]);
  }

  Future setBiometricData() async {
    _isBiometricsAvailable = await localAuth.canCheckBiometrics;
    _biometricType = await localAuth.getAvailableBiometrics();
    _isDeviceSupported = await localAuth.isDeviceSupported();
    log('Biometric available: $_isBiometricsAvailable');
    log('Device supported for biomettric: $_isDeviceSupported');
    notifyListeners();
  }
}
