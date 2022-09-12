import 'package:flutter/material.dart';
import 'package:flutter_template/src/core/config/routes/routes_path.dart';

import 'package:flutter_template/src/presentation/features/bored_activity/bored_activity_page.dart';
import 'package:flutter_template/src/presentation/features/login/login_page.dart';
import 'package:flutter_template/src/presentation/features/signup/signup_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.boredPage:
      return MaterialPageRoute(builder: (context) => BoredActivityPage());
    case AppRoutes.loginPage:
      // var userName = settings.arguments as String;
      return MaterialPageRoute(builder: (context) => LoginPage());
    case AppRoutes.signupPage:
      // var userName = settings.arguments as String;
      return MaterialPageRoute(builder: (context) => SignupPage());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}
