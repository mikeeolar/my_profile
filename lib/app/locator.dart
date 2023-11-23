import 'package:my_portfolio/core/data_source/kyc_remote_data_source/kyc_remote_data_source.dart';
import 'package:my_portfolio/core/data_source/kyc_remote_data_source/kyc_remote_data_source_impl.dart';
import 'package:my_portfolio/core/data_source/utility_remote_data_source/utility_remote_data_source.dart';
import 'package:my_portfolio/core/data_source/utility_remote_data_source/utility_remote_data_source_impl.dart';
import 'package:my_portfolio/core/services/biometric_service.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:my_portfolio/core/data_source/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:my_portfolio/core/data_source/auth_remote_data_source/auth_remote_data_source_impl.dart';
import 'package:my_portfolio/core/services/auth_service.dart';
import 'package:my_portfolio/core/services/device_info_service.dart';
import 'package:my_portfolio/core/services/http/http_service_impl.dart';
import 'package:my_portfolio/core/services/user_service.dart';
import 'package:my_portfolio/core/utils/exports.dart';

GetIt locator = GetIt.instance;
Future<void> setupLocator({bool test = false}) async {
  final Directory appDocDir =
      test ? Directory.current : await getApplicationDocumentsDirectory();
  Hive.init(appDocDir.path);

  if (!test) {
    locator.registerLazySingleton<HiveInterface>(() => Hive);
  }

  //--------------------------Services------------------------------
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<DialogService>(
    () => DialogService(),
  );
  locator.registerLazySingleton<SnackbarService>(
    () => SnackbarService(),
  );

  locator.registerLazySingleton<HttpService>(() => HttpServiceImpl());
  locator.registerLazySingleton<AuthService>(() => AuthService());
  locator.registerLazySingleton<UserService>(() => UserService());
  locator.registerLazySingleton<StorageService>(() => StorageService());
  locator.registerLazySingleton<UtilityService>(() => UtilityService());
  locator.registerLazySingleton<BiometricService>(
      () => BiometricService()..setBiometricData());
  locator.registerLazySingleton<DeviceInfoService>(
      () => DeviceInfoService()..initDeviceInfo());

  //--------------------------Date Source------------------------------
  locator.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl());
  locator.registerLazySingleton<UtilityRemoteDataSource>(
      () => UtilityRemoteDataSourceImpl());
  locator.registerLazySingleton<KycRemoteDataSource>(
      () => KycRemoteDataSourceImpl());

  Logger.d('Initializing boxes...');
  await UserService().init();
  await StorageService().init();
  await BiometricService().setBiometricData();
}
