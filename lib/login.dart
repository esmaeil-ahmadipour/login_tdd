import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  // Defining the TextEditingController for username and password fields
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Defining the login function to check credentials and navigate to Home page
  void login() {
    if (usernameController.text == 'ahmadipour' &&
        passwordController.text == '123456') {
      Navigator.pushNamed(context, '/home');
    } else {
      // Show error , when login data not match .
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
              title: Text('Error'),
              content: Text('Username or Password is incorrect!')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          // Username field with label and text input controller
          TextField(
              key: const Key('username'),
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username')),

          // Password field with label and text input controller
          TextField(
              key: const Key('password'),
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password')),

          // Login button with onPressed function to check credentials and navigate to Home page
          MaterialButton(
              key: const Key('login'),
              onPressed: login,
              child: const Text('Login'))
        ]),
      ),
    );
  }
}
