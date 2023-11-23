import 'package:logger/logger.dart';

Logger getLogger() {
  return Logger(printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 0,
    lineLength: 240,
    colors: true,
    printEmojis: true,
    printTime: false
  ),);
}

class SimpleLogPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    var color = PrettyPrinter.levelColors[event.level];
    var emoji = PrettyPrinter.levelEmojis[event.level];
    return [color!('$emoji: ${event.message}')];
  }
}