import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:my_portfolio/core/constants/config.dart';
import 'package:my_portfolio/core/constants/setup_dialog.dart';
import 'package:my_portfolio/core/managers/lifecycle_manager.dart';
import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/core/utils/preload_images_util.dart';
import 'package:my_portfolio/styles/theme/theme.dart' as theme;
import 'package:my_portfolio/ui/views/splash/splash_view.dart';

import 'firebase_options.dart';

final FirebaseCrashlytics _crashlytics = FirebaseCrashlytics.instance;
bool get isInDebugMode {
  // Assume you're in production mode.
  bool inDebugMode = false;

  // Assert expressions are only evaluated during development. They are ignored
  // in production. Therefore, this code only sets `inDebugMode` to true
  // in a development environment.
  assert(inDebugMode = true);

  return inDebugMode;
}

Future<void> reportError(dynamic error, dynamic stackTrace) async {
  // Print the exception to the console.
  log('Caught error: $error');
  if (isInDebugMode) {
    // Print the full stacktrace in debug mode.
    log(stackTrace);
  } else {
    // Send the Exception and Stacktrace to Crashlytics in Production mode.
    _crashlytics.recordError(error, stackTrace, fatal: true);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(Utils.lightdarkNav);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);

  _crashlytics.setCrashlyticsCollectionEnabled(true);

  // This captures errors reported by the Flutter framework.
  FlutterError.onError = (FlutterErrorDetails details) async {
    if (isInDebugMode) {
      // In development mode simply print to console.
      FlutterError.dumpErrorToConsole(details);
    } else {
      // In production mode report to the application zone to report to Firebase Crashlytics
      FlutterError.onError = _crashlytics.recordFlutterError;
    }
  };

  await Config.loadEnv();
  setupLogger(firebaseClient: _crashlytics);
  await setupLocator();
  await PreloadImageUtil.loadCacheImages();
  setupDialog();
  runApp(App());
}

class App extends StatelessWidget {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
 
  App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (c, _) => LifeCycleManager(
        child: MaterialApp(
          title: 'My Portfolio',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routers().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,
          theme: theme.lightTheme,
          home: const SplashView(),
          navigatorObservers: [
            StackedService.routeObserver,
            FirebaseAnalyticsObserver(analytics: analytics)
          ],
        ),
      ),
    );
  }
}
