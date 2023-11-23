import 'package:my_portfolio/core/utils/exports.dart';


class SuccessDialog2 extends StatefulWidget {
  final DialogRequest request;
  final Function completer;

  const SuccessDialog2({Key? key, required this.request, required this.completer}) : super(key: key);

  @override
  State<SuccessDialog2> createState() => _SuccessDialog2State();
}

class _SuccessDialog2State extends State<SuccessDialog2>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SvgPicture.asset(
                  //   'thumbs_up'.svg
                  // ),
                  Image.asset(
                    'check'.png,
                    height: 210.h,
                  ),
                  SizedBox(height: 10.h),
                  widget.request.title != null
                    ? Text(
                        widget.request.title!,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700
                        ),
                      )
                    : const SizedBox(),
                    SizedBox(height: 20.h),
                  widget.request.description != null
                    ? Text(
                        widget.request.description!,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: Colors.black,
                          fontSize: 12.sp,
                        ),
                      )
                    : const SizedBox(),
                ],
              ),
            ),
            widget.request.customData == null ? const SizedBox() : (widget.request.customData as bool) ? CustomButton(
              filled: false,
              title: 'Generate Receipt',
              onTap: () => widget.completer(DialogResponse(confirmed: true))
            ) : const SizedBox(),
            SizedBox(height: 20.h,),
            CustomButton(
              title: widget.request.mainButtonTitle ?? 'Exit',
              onTap: () => widget.completer(DialogResponse())
            )
          ],
        ),
      ),
    );
  }
}