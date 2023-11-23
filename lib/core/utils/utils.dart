import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:encrypt/encrypt.dart' as prefix0;
import 'package:encrypt/encrypt.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:my_portfolio/core/enums/transaction_service_type.dart';
import 'package:my_portfolio/core/enums/transaction_type.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class Utils {
  static EdgeInsets padding = EdgeInsets.only(
      top: MediaQuery.of(StackedService.navigatorKey!.currentContext!)
              .padding
              .top +
          40.h,
      left: 20.w,
      right: 20.w,
      bottom: 40.h);
  static double statusBarPadding =
      MediaQuery.of(StackedService.navigatorKey!.currentContext!).padding.top;
  static double get buttonVerticalPadding => Platform.isIOS ? 40.h : 10.h;

  static Color hexToColor(String hexColor) {
    String hex = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hex = 'FF$hexColor';
    }
    final int? temp = int.tryParse(hex, radix: 16);
    return Color(temp ?? 0xFFE41613);
  }

  static BoxDecoration roundedShadow = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8.r),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(.1),
        spreadRadius: 1,
        blurRadius: 8,
        offset: const Offset(0, 1),
      ),
    ],
  );

  // static NumberFormat currencyFormatter(int? decimal) {
  //   return NumberFormat.simpleCurrency(
  //       name: '', decimalDigits: decimal ?? 2);
  // }

  static String currencyFormatter(amount, {decimalDigit, symbol}) {
    final CurrencyTextInputFormatter formatter = CurrencyTextInputFormatter(
      locale: 'en_NG',
      symbol: symbol ?? '',
      decimalDigits: decimalDigit ?? 2,
    );
    return formatter.format(amount.toString());
  }

  static final normalFormatter = NumberFormat('#,###.##')
    ..minimumFractionDigits = 2
    ..maximumFractionDigits = 2;
  // static final GlobalKey<NavigatorState>? navigatorKey = StackedService.nestedNavigationKey(locator<MainViewModel>().currentIndex);
  // static final int navId = locator<MainViewModel>().currentIndex;

  static final iv = IV.fromUtf8(dotenv.env['IV'] ?? '');

  static Encrypter crypt() {
    final appKey = dotenv.env['ENCRYPTION_APP_KEY'];
    final key = prefix0.Key.fromUtf8(appKey ?? '');
    return Encrypter(AES(key, mode: prefix0.AESMode.cbc));
  }

  static String encryptData(String data) {
    return crypt().encrypt(data, iv: iv).base64;
  }

  static String decryptData(String data) {
    return crypt().decrypt64(data, iv: iv);
  }

  static final SystemUiOverlayStyle lightTransNav = Platform.isIOS
      ? const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: BrandColors.primary,
          systemNavigationBarIconBrightness: Brightness.dark)
      : const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: BrandColors.primary,
          systemNavigationBarIconBrightness: Brightness.light);

  static final SystemUiOverlayStyle light = Platform.isIOS
      ? const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark)
      : const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark);

  static final SystemUiOverlayStyle lightWhiteNav = Platform.isIOS
      ? const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark)
      : const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.light);

  static final SystemUiOverlayStyle lightdarkNav = Platform.isIOS
      ? const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light)
      : const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light);

  static final SystemUiOverlayStyle dark = Platform.isIOS
      ? const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark)
      : const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark);

  static final SystemUiOverlayStyle darkWhiteNav = Platform.isIOS
      ? const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.light)
      : const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark);

  static String greetingMessage() {
    final timeNow = DateTime.now().hour;

    if (timeNow < 12) {
      return 'Good Morning';
    } else if ((timeNow >= 12) && (timeNow < 16)) {
      return 'Good Afternoon';
    } else if ((timeNow >= 16) && (timeNow < 20)) {
      return 'Good Evening';
    } else {
      return 'Good Evening';
    }
  }

  static String getLogoBankName(String bank) {
    String temp = '';
    if (bank.toLowerCase().contains('fcmb')) {
      temp = 'fcmb';
    } else if (bank.toLowerCase().contains('fidelity')) {
      temp = 'fidelity_bank';
    } else if (bank.toLowerCase().contains('ecobank')) {
      temp = 'ecobank';
    } else if (bank.toLowerCase().contains('standard')) {
      temp = 'standard_chartered';
    } else if (bank.toLowerCase().contains('stanbic')) {
      temp = 'stanbic_ibtc';
    } else if (bank.toLowerCase().contains('united')) {
      temp = 'united_bank_for_africa';
    } else if (bank.toLowerCase().contains('kuda')) {
      temp = 'kuda_bank';
    } else if (bank.toLowerCase().contains('guaranty')) {
      temp = 'guaranty_trust_bank';
    } else if (bank.toLowerCase().contains('heritage')) {
      temp = 'heritage_bank';
    } else if (bank.toLowerCase().contains('access')) {
      temp = 'access_bank';
    } else {
      temp =
          '${bank.split(' ')[0].toLowerCase()}_${bank.split(' ').length == 1 ? '' : bank.split(' ')[1].toLowerCase()}';
    }

    return temp;
  }

  static String getStandingOrderStatus(int val) {
    String stat;
    switch (val) {
      case 0:
        stat = 'Successful';
        break;
      case 1:
        stat = 'Failed';
        break;
      case 3:
        stat = 'Pending';
        break;
      case 4:
        stat = 'Declined';
        break;
      case 6:
        stat = 'Processing';
        break;
      default:
        stat = '';
    }
    return stat;
  }

  static int getTransactionServiceType(TransactionServiceType val) {
    int type;
    switch (val) {
      case TransactionServiceType.ownAccountTransfer:
        type = 1;
        break;
      case TransactionServiceType.localTransfer:
        type = 2;
        break;
      case TransactionServiceType.interbankTransfer:
        type = 3;
        break;
      case TransactionServiceType.billPayment:
        type = 4;
        break;
      case TransactionServiceType.airtimePurchase:
        type = 5;
        break;
      default:
        type = 0;
    }
    return type;
  }

  static TransactionServiceType getTransactionServiceTypefromIndex(int val) {
    TransactionServiceType type;
    switch (val) {
      case 1:
        type = TransactionServiceType.ownAccountTransfer;
        break;
      case 2:
        type = TransactionServiceType.localTransfer;
        break;
      case 3:
        type = TransactionServiceType.interbankTransfer;
        break;
      case 4:
        type = TransactionServiceType.billPayment;
        break;
      case 5:
        type = TransactionServiceType.airtimePurchase;
        break;
      default:
        type = TransactionServiceType.airtimePurchase;
    }
    return type;
  }

  static TransactionType getTransactionType(int val) {
    TransactionType type;
    switch (val) {
      case 1:
        type = TransactionType.transfer;
        break;
      case 2:
        type = TransactionType.transfer;
        break;
      case 3:
        type = TransactionType.transfer;
        break;
      case 4:
        type = TransactionType.electricity;
        break;
      case 5:
        type = TransactionType.airtime;
        break;
      default:
        type = TransactionType.transfer;
    }
    return type;
  }

  static String getServiceRequestTitle(int type) {
    String temp = '';
    switch (type) {
      case 1:
        temp = 'Token Request';
        break;
      case 2:
        temp = 'BTA Request';
        break;
      case 3:
        temp = 'Cheque Request';
        break;
      case 4:
        temp = 'Card Request';
        break;
      case 5:
        temp = 'Limit Upgrade Request';
        break;
      case 6:
        temp = 'Account Upgrade Request';
        break;
      case 7:
        temp = 'PTA Request';
        break;
      case 8:
        temp = 'Account Statment Request';
        break;
      case 9:
        temp = 'Account Update Request';
        break;
      default:
        temp = '';
    }
    return temp;
  }

  static List<DropdownMenuItem<T>> getDropdownItem<T>(List<T> items) {
    return items.map((T value) {
      return DropdownMenuItem<T>(
        value: value,
        child: Text(
          '$value',
          style: Theme.of(StackedService.navigatorKey!.currentContext!)
              .textTheme
              .headlineMedium!
              .copyWith(
                fontSize: 14.sp,
                color: Colors.black,
              ),
        ),
      );
    }).toList();
  }

  static PinTheme roundedBoxPinField = PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(8.r),
    borderWidth: 1,
    fieldHeight: 37.h,
    fieldWidth: 37.h,
    activeFillColor: Colors.transparent,
    inactiveFillColor: Colors.transparent,
    disabledColor: BrandColors.bcBDBDBD,
    activeColor: BrandColors.bcBDBDBD,
    inactiveColor: BrandColors.bcBDBDBD,
  );
}
