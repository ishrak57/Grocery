import 'package:flutter/material.dart';
import 'package:grocery_app/features/homepage/presentation/pages/homepage.dart';
import 'package:grocery_app/features/startup/presentation/pages/splash1page.dart';

import '../features/startup/presentation/pages/startup_page.dart';
import 'routing_variables.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Navigation.startup:
        return MaterialPageRoute(builder: (_) => StartupPage());
      case Navigation.splash1Page:
        return MaterialPageRoute(builder: (_) => Splash1Page());
      case Navigation.homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      // case Navigation.homePage:
      //   return MaterialPageRoute(builder: (_) => DashBoardPage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
