import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/src/core/config/routes/locator.dart';
import 'package:flutter_template/src/core/config/routes/navigation_service.dart';
import 'package:flutter_template/src/core/config/routes/routers.dart';
import 'package:flutter_template/src/core/network/http_override.dart';
import 'package:flutter_template/src/presentation/features/signup/signup_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  HttpOverrides.global = MyHttpOverrides();
  setupLocator();
  runApp(const ProviderScope(child: FlutterTemplate()));
}

class FlutterTemplate extends StatelessWidget {
  const FlutterTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      home: SignupPage(),
      onGenerateRoute: generateRoute,
    );
  }
}
