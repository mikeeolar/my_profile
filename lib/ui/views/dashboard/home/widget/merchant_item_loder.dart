// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:my_portfolio/core/utils/exports.dart';
import 'package:shimmer/shimmer.dart';

class MerchantItemLoader extends StatelessWidget {
  const MerchantItemLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[350]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.w),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          decoration: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: const Color(0xFFF5F5F5), width: .8.h))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // CircleAvatar(
              //   radius: 19.r,
              //   backgroundColor: const Color(0xFFE7F5FF),
              // ),
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 84,
                    decoration: BoxDecoration(
                        color: const Color(0xFFE7F5FF),
                        borderRadius: BorderRadius.circular(8.r)),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 120.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.r)),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 84,
                    decoration: BoxDecoration(
                        color: const Color(0xFFE7F5FF),
                        borderRadius: BorderRadius.circular(8.r)),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 120.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.r)),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 84,
                    decoration: BoxDecoration(
                        color: const Color(0xFFE7F5FF),
                        borderRadius: BorderRadius.circular(8.r)),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 120.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.r)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
