import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_portfolio/core/utils/logger.dart';

abstract class Config {

  static Future<void> loadEnv() async {
    const String env = String.fromEnvironment('app.env');
    Logger.d(env);
    const envFile = 'env/$env.env';
    await dotenv.load(fileName: envFile);
  }
}