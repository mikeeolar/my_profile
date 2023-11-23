import 'package:file_picker/file_picker.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_portfolio/core/utils/exports.dart';

Widget handle({Color? color}) {
  return Container(
    width: 60.w,
    height: 4.h,
    decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(50.r)),
  );
}

String mapKey = dotenv.env['GoogleMapKey'] ?? '';

String message(dynamic data, String? responseCodeError) {
  return (data['message'] == null ||
          data['message'].isEmpty ||
          data['message'] == '')
      ? data['validationErrors'].join() as String
      : (data['validationErrors'] == null ||
              data['validationErrors'].isEmpty ||
              data['validationErrors'] == '')
          ? data['message']
          : responseCodeError ?? 'An error occurred';
}

Widget nairaText({required String text, TextStyle? style, int? maxLines}) {
  return RichText(
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    text: TextSpan(
        style: style?.copyWith(fontFamily: 'Roboto'),
        text: text[0],
        children: [
          TextSpan(
            text: text.substring(1),
            style: style,
          )
        ]),
  );
}

Widget detailItem(
    {required BuildContext context,
    required String title,
    required String value}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
    width: double.infinity,
    decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFF3F3F3)))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200.w,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 13.sp, color: Colors.black),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
      ],
    ),
  );
}

void showCustomBottomSheet(
    {required BuildContext context,
    required Widget Function(BuildContext, ScrollController) builder,
    bool showCloseIcon = true,
    Function? whenComplete,
    Color? backgroundColor,
    double initialChildSize = .5,
    double minChildSize = .5,
    double maxChildSize = .5}) {
  assert(minChildSize >= initialChildSize,
      'min height cant be more than initial height');
  assert(
      minChildSize <= maxChildSize, 'min height cant be more than max height');
  assert(initialChildSize <= maxChildSize,
      'initial height cant be more than max height');
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
      context: context,
      isScrollControlled: true,
      backgroundColor: backgroundColor ?? Colors.white,
      builder: (c) => ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r)),
            child: DraggableScrollableSheet(
                initialChildSize: initialChildSize,
                minChildSize: minChildSize,
                maxChildSize: maxChildSize,
                expand: false,
                builder: (c, s) => Material(
                      color: backgroundColor ?? Colors.white,
                      child: !showCloseIcon
                          ? builder(c, s)
                          : Stack(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 38.h,
                                    ),
                                    Expanded(child: builder(c, s)),
                                  ],
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 24.h, right: 24.h),
                                    child: InkWell(
                                      onTap: () => Navigator.pop(context),
                                      borderRadius: BorderRadius.circular(50.r),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: SvgPicture.asset('close'.svg),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    )),
          )).whenComplete(() {
    if (whenComplete != null) {
      whenComplete();
    }
  });
}

void bottomModalSetup(
    {required BuildContext context,
    required Widget child,
    double? height,
    bool isDismissible = true,
    bool enableDrag = true}) {
  final bool initialNavStatus = locator<UtilityService>().showNav;
  locator<UtilityService>().setShowNav(false);
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(2.r), topRight: Radius.circular(2.r))),
      context: context,
      enableDrag: enableDrag,
      // topRadius: Radius.circular(32.r),
      isScrollControlled: true,
      isDismissible: isDismissible,
      barrierColor: Colors.black.withOpacity(.5),
      backgroundColor: Colors.transparent,
      builder: (c) => WillPopScope(
            onWillPop: () {
              return Future.value(isDismissible);
            },
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2.r),
                    topRight: Radius.circular(2.r)),
                child: Material(
                  child: SizedBox(height: height, child: child),
                )),
          )).whenComplete(() {
    if (initialNavStatus) locator<UtilityService>().setShowNav(true);
  });
}

Future selectImageFileSource({
  required BuildContext context,
  required ValueChanged<ImageSource> func,
}) {
  final bool initialNavStatus = locator<UtilityService>().showNav;
  locator<UtilityService>().setShowNav(false);
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(25.r),
        topLeft: Radius.circular(25.r),
      )),
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (c) => Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 200.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.r),
                          topLeft: Radius.circular(25.r),
                        )),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 30.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                              func(ImageSource.camera);
                            },
                            child: sourceItem(
                                context: context,
                                image: const Icon(Icons.camera),
                                name: 'Camera',
                                color: Colors.blue[300]!),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                              func(ImageSource.gallery);
                            },
                            child: sourceItem(
                                context: context,
                                image: const Icon(Icons.image),
                                name: 'Gallery',
                                color: Colors.orange[300]!),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )).whenComplete(() {
    if (initialNavStatus) locator<UtilityService>().setShowNav(true);
  });
}

Future selectFileSource({
  required BuildContext context,
  required ValueChanged<FilePickerResult> func,
}) {
  final bool initialNavStatus = locator<UtilityService>().showNav;
  locator<UtilityService>().setShowNav(false);
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(25.r),
        topLeft: Radius.circular(25.r),
      )),
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (c) => Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 100.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.r),
                          topLeft: Radius.circular(25.r),
                        )),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 30.w,
                          ),
                          GestureDetector(
                            onTap: () async {
                              Navigator.of(context).pop();
                              final filePicker =
                                  await FilePicker.platform.pickFiles();
                              func(filePicker!);
                            },
                            child: sourceItem(
                                context: context,
                                image: const Icon(Icons.file_upload),
                                name: 'File upload',
                                color: Colors.orange[300]!),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )).whenComplete(() {
    if (initialNavStatus) locator<UtilityService>().setShowNav(true);
  });
}

Widget sourceItem(
    {required BuildContext context,
    required Icon image,
    required String name,
    required Color color}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200]!))),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 25.r,
          backgroundColor: BrandColors.primaryFade,
          child: Center(child: image),
        ),
        SizedBox(
          width: 15.h,
        ),
        Expanded(
          child: Text(name,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 16.sp, color: const Color(0xFF757575))),
        )
      ],
    ),
  );
}

final hyperVergAppId = dotenv.env['HyperVergeAppId'];
final hyperVergeAppKey = dotenv.env['HyperVergeAppKey'];
final hyperVergeWorkFlowId = dotenv.env['HyperVergeWorkFlowId'];
