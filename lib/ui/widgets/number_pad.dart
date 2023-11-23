import 'package:intl/intl.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class NumberPad extends StatefulWidget {
  final ValueChanged<String> onComplete;
  final String? actionButtonTitle;

  const NumberPad({Key? key, required this.onComplete, required this.actionButtonTitle}) : super(key: key);
  
  @override
  State<NumberPad> createState() => _NumberPadState();
}

class _NumberPadState extends State<NumberPad> {
  final NavigationService _navigationService = locator<NavigationService>();
  final currencyFormatter = NumberFormat.simpleCurrency(name: 'NGN', decimalDigits: 0);
  TextEditingController amountController = TextEditingController();
  String amount = '';

  void runProcess() {
    amountController.text = currencyFormatter.format(int.tryParse(amount));
    amountController.selection = TextSelection.fromPosition(TextPosition(offset: amountController.text.length));
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
          // margin: EdgeInsets.only(bottom: SizeConfig.yMargin(context, .5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Enter Amount',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 16.sp
                ),
              ),
              IconButton(
                onPressed: () => _navigationService.back(),
                icon: const Icon(
                  Icons.clear,
                )
              )
            ],
          ),
        ),
        SizedBox(
          // margin: EdgeInsets.symmetric(vertical: SizeConfig.yMargin(context, 1)),
          // padding: EdgeInsets.symmetric(horizontal: SizeConfig.xMargin(context, .5)),
          width: 200.w,
          // height: SizeConfig.yMargin(context, 5),
          // decoration: BoxDecoration(
          //   border: Border.all(color: Colors.black, width: 2),
          //   borderRadius: BorderRadius.circular(SizeConfig.yMargin(context, 1))
          // ),
          child: CustomTextField(
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 16.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold
            ),
            controller: amountController,
            showCusor: true,
            center: true,
            readOnly: true,
            autofocus: true,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        keyPad(
                          context: context,
                          text: '1',
                          func: (text) => setState(() {
                            amount = '$amount$text';
                            runProcess();
                          })
                        ),
                        keyPad(
                          context: context,
                          text: '2', 
                          func: (text) => setState(() {
                            amount = '$amount$text';
                            runProcess();
                          })
                        ),
                        keyPad(
                          context: context,
                          text: '3',
                          func: (text) => setState(() {
                            amount = '$amount$text';
                            runProcess();
                          })
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        keyPad(
                          context: context,
                          text: '4',
                          func: (text) => setState(() {
                            amount = '$amount$text';
                            runProcess();
                          })
                        ),
                        keyPad(
                          context: context,
                          text: '5',
                          func: (text) => setState(() {
                            amount = '$amount$text';
                            runProcess();
                          })
                        ),
                        keyPad(
                          context: context,
                          text: '6',
                          func: (text) => setState(() {
                            amount = '$amount$text';
                            runProcess();
                          })
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        keyPad(
                          context: context,
                          text: '7',
                          func: (text) => setState(() {
                            amount = '$amount$text';
                            runProcess();
                          })
                        ),
                        keyPad(
                          context: context,
                          text: '8',
                          func: (text) => setState(() {
                            amount = '$amount$text';
                            runProcess();
                          })
                        ),
                        keyPad(
                          context: context,
                          text: '9',
                          func: (text) => setState(() {
                            amount = '$amount$text';
                            runProcess();
                          })
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundColor: Colors.transparent,
                        ),
                        keyPad(
                          context: context,
                          text: '0',
                          func: (text) => setState(() {
                            if(amount.isNotEmpty) {
                              amount = '$amount$text';
                              runProcess();
                            }
                          })
                        ),
                        amount == '' || amount == '₦' ? SizedBox(
                          width: 60.r
                        ) : InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {
                            setState(() {
                              if(amount.length>1) {
                                amount = amount.substring(0, amount.length-1);
                                runProcess();
                              } else {
                                amount = '';
                                amountController.text = '';
                              }
                            });
                          },
                          child: CircleAvatar(
                            radius: 32.r,
                            backgroundColor: BrandColors.light,
                            child: Center(
                              child: amount == '' ? const SizedBox() : const Icon(
                                Icons.backspace,
                                color: Colors.black,
                              )
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                _navigationService.back();
                widget.onComplete(amount);
              },
              child: Container(
                color: const Color(0xFF4CD4AB),//BrandColors.primary,
                padding: EdgeInsets.only(
                  top: 30.h,
                  bottom: Platform.isIOS ? 40.h : 30.h
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.actionButtonTitle ?? 'Top-Up',
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 20.sp,
                          color: Colors.white
                        ),
                      ),
                      // SizedBox(width: 20.w,),
                      // Icon(
                      //   Icons.arrow_forward,
                      //   color: Colors.white,
                      // )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget keyPad({required BuildContext context, required String text, required Function func}) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () => func(text),
      child: CircleAvatar(
        backgroundColor: BrandColors.light,
        radius: 32.r,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ),
    );
  } 
}