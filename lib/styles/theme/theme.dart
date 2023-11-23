import 'package:my_portfolio/core/utils/exports.dart';

ThemeData darkTheme = ThemeData(
  primarySwatch: createMaterialColor(BrandColors.light),
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFFFCFCFC),
  fontFamily: 'Outfit',
  iconTheme: const IconThemeData(
    color: Colors.white
  ),
  dividerColor: Colors.black12,
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  primarySwatch: createMaterialColor(BrandColors.primary),
  primaryColor: BrandColors.primary,
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFFCFCFC),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(
    elevation: 0,
    systemOverlayStyle: Utils.darkWhiteNav,
    color: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.white),
  ),
  primaryTextTheme: TextTheme(
    titleLarge: const TextStyle().copyWith(
      color: BrandColors.bc1C1939,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.02,
      height: 1.25
    )
  ),
  iconTheme: const IconThemeData(
    color: Colors.white
  ),
  fontFamily: 'Outfit',
  dividerColor: Colors.black12,
  cardColor: Colors.white54
);

MaterialColor createMaterialColor(Color color) {
  final List<double> strengths = <double>[.05];
  final Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}