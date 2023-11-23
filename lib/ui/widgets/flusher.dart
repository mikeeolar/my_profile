import 'package:another_flushbar/flushbar.dart';
import 'package:my_portfolio/core/utils/exports.dart';

/// A Customize flushbar widget to be use across development for quick message.
/// String [message]
/// BuildContext [context]
/// Position argument for the duration, only use when you want longer message time.
/// Duration [sec]
Flushbar flusher(String message,
    {int sec = 3,
    Color? color,
    String? title,
    bool network = false,
    bool info = true}) {
  late Flushbar flush;
  // ignore: join_return_with_assignment
  flush = Flushbar(
    isDismissible: true,
    blockBackgroundInteraction: true,
    flushbarPosition: FlushbarPosition.TOP,
    flushbarStyle: FlushbarStyle.GROUNDED,
    backgroundColor: color ?? BrandColors.primary,
    // duration: Duration(seconds: sec),
    title: title,
    messageText: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          message,
          style: Theme.of(StackedService.navigatorKey!.currentContext!)
              .textTheme
              .headlineSmall!
              .copyWith(fontSize: 14.sp, color: Colors.white),
        ),
        SizedBox(
          height: 15.h,
        ),
        InkWell(
          onTap: () {
            if (flush.isShowing()) {
              flush.dismiss(true);
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            width: double.infinity,
            decoration: BoxDecoration(
                color: color ?? BrandColors.primary.withRed(180),
                borderRadius: BorderRadius.circular(15.r),
                backgroundBlendMode: BlendMode.modulate),
            child: Center(
              child: Text(
                'Dismiss',
                style: Theme.of(StackedService.navigatorKey!.currentContext!)
                    .textTheme
                    .titleLarge!
                    .copyWith(
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
              ),
            ),
          ),
        )
      ],
    ),
    // icon: Icon(
    //   info ? Icons.info_outline : network ? Icons.signal_cellular_connected_no_internet_4_bar_rounded : Icons.storage_rounded,
    //   size: 24.h,
    //   color: BrandColors.primary
    // ),
    leftBarIndicatorColor: color ?? BrandColors.primary,
  )..show(StackedService.navigatorKey!.currentContext!);

  return flush;
}
