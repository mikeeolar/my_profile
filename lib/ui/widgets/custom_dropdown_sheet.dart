// import 'package:my_portfolio/core/utils/exports.dart';
// import 'package:my_portfolio/ui/widgets/bottom_sheet/data_bottom_sheet.dart';

// class CustomDropDownSheet<T> extends StatelessWidget {
//   const CustomDropDownSheet({
//     super.key,
//     required this.data,
//     required this.controller,
//     required this.label,
//     required this.hintText,
//     required this.onChanged,
//     this.loading = false,
//     this.height,
//   });

//   final List<T> data;
//   final TextEditingController controller;
//   final String label;
//   final String hintText;
//   final bool loading;
//   final double? height;
//   final ValueChanged<T> onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         bottomModalSetup(
//           height: height ?? 200,
//           context: context,
//           child: DataBottomSheet(data: data, onChanged: onChanged),
//         );
//       },
//       child: loading
//           ? DropDownSheetLoader(label: label)
//           : CustomTextField(
//               label: label,
//               hintText: hintText,
//               enabled: false,
//               controller: controller,
//               suffixIcon: Padding(
//                 padding: EdgeInsets.only(right: 10.w),
//                 child: Icon(
//                   Icons.expand_more,
//                   color: HexColor('#282828'),
//                 ),
//               ),
//             ),
//     );
//   }
// }

// class DropDownSheetLoader extends StatelessWidget {
//   const DropDownSheetLoader({super.key, required this.label});

//   final String label;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.only(left: 8.w, bottom: 8.h),
//           child: Text(
//             label,
//             style: BrandTextStyles.regular.copyWith(
//               fontSize: 13.sp,
//               color: const Color(0xFF282828),
//             ),
//           ),
//         ),
//         Container(
//             height: 55.h,
//             padding: EdgeInsets.symmetric(horizontal: 17.w), //vertical: 13.h,
//             decoration: BoxDecoration(
//                 color: BrandColors.bcFAFAFA,
//                 borderRadius: BorderRadius.circular(10.r),
//                 border: Border.all(
//                   color: const Color(0xFF282828),
//                 )),
//             child: Row(
//               children: [
//                 SizedBox(
//                     width: 20.h,
//                     height: 20.h,
//                     child: const CircularProgressIndicator(
//                       strokeWidth: 2,
//                     )),
//                 SizedBox(
//                   width: 10.w,
//                 ),
//                 Expanded(
//                   child: Text(
//                     'Loading',
//                     style: Theme.of(context).textTheme.displaySmall!.copyWith(
//                         fontSize: 14.sp, color: const Color(0xFFACACAC)),
//                   ),
//                 ),
//                 Icon(
//                   Icons.keyboard_arrow_down,
//                   color: const Color(0xFF718096).withOpacity(0.5),
//                   size: 26.h,
//                 )
//               ],
//             )),
//       ],
//     );
//   }
// }



import 'package:my_portfolio/core/utils/exports.dart';

class CustomDropDownSheet<T> extends StatelessWidget {
  const CustomDropDownSheet({
    super.key,
    required this.data,
    required this.controller,
    required this.label,
    required this.hintText,
    this.loading = false,
    this.height,
  });

  final List<Widget> data;
  final TextEditingController controller;
  final String label;
  final String hintText;
  final bool loading;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (loading || data.isEmpty) ? null : () {
        bottomModalSetup(
          height: height ?? 200,
          context: context,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Gap(20.h),
                        Column(
                          children: data,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        );
      },
      child: loading
          ? DropDownSheetLoader(label: label)
          : CustomTextField(
              label: label,
              hintText: hintText,
              enabled: false,
              controller: controller,
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Icon(
                  Icons.expand_more,
                  color: HexColor('#282828'),
                ),
              ),
            ),
    );
  }
}

class DropDownSheetLoader extends StatelessWidget {
  const DropDownSheetLoader({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w, bottom: 8.h),
          child: Text(
            label,
            style: BrandTextStyles.regular.copyWith(
              fontSize: 14.sp,
              color: const Color(0xFF282828),
            ),
          ),
        ),
        Container(
            height: 55.h,
            padding: EdgeInsets.symmetric(horizontal: 17.w), //vertical: 13.h,
            decoration: BoxDecoration(
                color: BrandColors.bcFAFAFA,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: const Color(0xFF282828),
                )),
            child: Row(
              children: [
                SizedBox(
                    width: 20.h,
                    height: 20.h,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                    )),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Text(
                    'Loading',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 14.sp, color: const Color(0xFFACACAC)),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: const Color(0xFF718096).withOpacity(0.5),
                  size: 26.h,
                )
              ],
            )),
      ],
    );
  }
}
