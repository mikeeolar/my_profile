// ignore_for_file: unused_local_variable
import 'package:my_portfolio/core/models/news.dart';
import 'package:my_portfolio/ui/views/auth/login/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/ui/views/dashboard/blog/article_detail_view.dart';
import 'package:my_portfolio/ui/views/dashboard/dashboard_view.dart';
import 'package:my_portfolio/ui/views/splash/splash_view.dart';
import '../core/utils/exports.dart';

abstract class Routes {
  static const splash = '/splash';
  static const login = '/login';
  static const dashboard = '/dashboard';
  static const articleDetail = '/articleDetail';
}

class Routers {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final dynamic args = settings.arguments is Map<String, dynamic> &&
            (settings.arguments as Map<String, dynamic>)
                .containsKey('arguments')
        ? (settings.arguments as Map<String, dynamic>)['arguments']
        : settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return CupertinoPageRoute<dynamic>(
            builder: (context) => const SplashView(), settings: settings);
      case Routes.login:
        return CupertinoPageRoute<dynamic>(
            builder: (context) => const LoginView(), settings: settings);
      case Routes.dashboard:
        return CupertinoPageRoute<dynamic>(
            builder: (context) => const DashboardView(), settings: settings);
      case Routes.articleDetail:
        final Articles article = args as Articles;
        return CupertinoPageRoute<dynamic>(
            builder: (context) => ArticleDetailView(
              article: article,
            ),
            settings: settings);
      default:
        return unknownRoutePage(settings.name!);
    }
  }
}

// borrowed from auto_route:
// returns an error page routes with a helper message.
PageRoute unknownRoutePage(String routeName) => CupertinoPageRoute(
      builder: (ctx) => Scaffold(
        body: Container(
          color: Colors.white,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                child: Text(
                  routeName == '/'
                      ? 'Initial route not found! \n did you forget to annotate your home page with @initial or @MaterialRoute(initial:true)?'
                      : 'Route name $routeName is not found!',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              OutlinedButton.icon(
                label: const Text('Back'),
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(ctx).pop(),
              )
            ],
          ),
        ),
      ),
    );
