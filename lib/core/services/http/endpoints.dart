class _Auth {
  final String register = 'customers/register';
  final String login = 'customers/login';
  final String pin = 'pin';
  final String verifyUser = 'customers/verify';
  final String resendOtp = 'customers/resend-otp';
  final String changePasscode = 'customers/change-passcode';
  final String forgotPasscode = 'customers/forgot-passcode';
  final String resetPasscode = 'customers/reset-passcode';
  final String forgotPin = 'forgot-pin';
  final String resetPin = 'reset-pin';
  final String resendDeviceOtp = 'devices/resend-otp';
  final String activateDevice = 'devices/verify';
  final String profile = 'profile';
  final String logout = 'logout';
  final String favourites = 'customers/categories/favourites';
  final String uploadImage = 'profile-image';
}

class _Kyc {
  final String confirmBvn = 'customers/confirm-bvn';
  final String confirmBvnImage = 'customers/confirm-bvn-image';
  final String verifyBvn = 'customers/verify-bvn';
  final String resendBvnOtp = 'customers/resend-bvn-otp';
  final String accounts = 'customers/accounts';
  final String personalData = 'customers/kyc/personal-data';
  final String nextOfKin = 'customers/kyc/next-of-kin';
  final String employment = 'customers/kyc/employment';
  final String documentUploads = 'customers/kyc/uploads';
  final String bankStatments = 'customers/bank-statements/upload';
}

class _Transaction {
  final String wallet = 'customers/wallets';
  final String merchants = 'customers/merchants';
  final String tenures = 'tenures';
  final String bnblCaluclator = 'customers/bnpl-calculator';
  final String product = 'customers/products/2';
  final String order = 'customers/orders';
  final String totalOutstanding = 'customers/orders/total-outstanding-amount';
  final String cardPayment = 'customers/orders';
  final String otherPayment = 'customers/orders';
  final String notifications = 'notifications';
  final String readNotifications = 'notifications/read';
}

class _Util {
  final String states = 'nigerian-states';
  final String banks = 'banks';
  final String cards = 'customers/cards';
  final String nameEnquiry = 'accounts/verify';
  final String bankName = 'banks';
  final String account = 'customers/accounts';
  final String shoppingCategories = 'categories';
  final String cardTokenization = 'customers/cards/tokenization';
  final String placeAutoCompleteSearch = 'place/autocomplete';
  final String placeDetails = 'place/details';
  final String nearbyMerchants = 'customers/merchants/nearby';
}

final auth = _Auth();
final util = _Util();
final kyc = _Kyc();
final transaction = _Transaction();
