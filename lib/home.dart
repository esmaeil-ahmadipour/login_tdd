import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home page', key: Key('textHomePage'))),
      body: const Center(child: Text('Welcome to Home Page!')),
    );
  }
}
