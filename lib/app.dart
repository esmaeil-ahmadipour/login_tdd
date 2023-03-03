import 'package:flutter/material.dart';
import 'package:login_tdd/home.dart';
import 'package:login_tdd/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/': (context) => const LoginPage(),
          '/home': (context) => const HomePage()
        },
        onUnknownRoute: (settings) =>
            MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
