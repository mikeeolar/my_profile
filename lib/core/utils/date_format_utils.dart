import 'package:intl/intl.dart';

class DateFormatUtil {
  DateFormatUtil._();

  static final dateTimeFormat = DateFormat('dd MMM yyyy, hh:mm a');
  static final dateFormat = DateFormat('dd MMM, yyyy');
  static final chartFormat = DateFormat('dd-MMM-yy');
  static final dddashmmdashyyyy = DateFormat('dd-MM-yyyy');
  static final timeFormat = DateFormat('hh:mm a');
  static final dateMonthTimeFormat = DateFormat('dd MMM, hh:mm a');
  static final dayMonthFormat = DateFormat('E MMM dd, yyyy');
  static final dayFormat = DateFormat('E');
  static final yyyymmdd = DateFormat('yyyy-MM-dd');
  static final ddmmyyyy2 = DateFormat('yyyy-MM-dd');
  static final ddmmyyyy = DateFormat('dd/MM/yyyy');
  static final mmmddyyy = DateFormat('MMM dd, yyyy');
  static final ddmmmyyy = DateFormat('dd MMM, yyyy');
  static final mmyyyy = DateFormat('MM/yyyy');
  static final mMMyyyy = DateFormat('MMM yyyy');
  static final mMMMyyyy = DateFormat('MMMM yyyy');

  static String monthDay(String date) =>
      DateFormat('MMM d').format(DateTime.parse(date));

  static String monthDayYear(String date) =>
      DateFormat('MMM dd, yyyy').format(DateTime.parse(date));

}