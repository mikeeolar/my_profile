import 'package:my_portfolio/core/utils/exports.dart';

///Design sysytem ictexton styles
class BrandTextStyles {
  BrandTextStyles._();

  static BuildContext context = StackedService.navigatorKey!.currentContext!;

  static TextStyle regular = Theme.of(context).textTheme.bodyMedium!.copyWith(
    fontSize: 12.sp,
    color: Colors.white,
    fontWeight: FontWeight.w400
  );

  static TextStyle medium = Theme.of(context).textTheme.bodyMedium!.copyWith(
    fontSize: 12.sp,
    color: Colors.white,
    fontWeight: FontWeight.w500
  );

  static TextStyle semiBold = Theme.of(context).textTheme.bodyMedium!.copyWith(
    fontSize: 32.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bold = Theme.of(context).textTheme.bodyMedium!.copyWith(
    fontSize: 12.sp,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static TextStyle extraBold = Theme.of(context).textTheme.bodyMedium!.copyWith(
    fontSize: 12.sp,
    color: Colors.white,
    fontWeight: FontWeight.w900,
  );
  
}