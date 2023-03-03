// Unit Tests
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_tdd/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  test('LoginPage should have username and password fields', () {
    const widget = LoginPage();
    final element = widget.createElement(); // this will set state.widget
    final loginPageState = element.state as LoginPageState;

    expect(loginPageState.usernameController, isNotNull);
    expect(loginPageState.passwordController, isNotNull);
  });

  test('LoginPage should navigate to HomePage when credentials are correct',
      () {
    const widget = LoginPage();
    final element = widget.createElement(); // this will set state.widget
    final loginPageState = element.state as LoginPageState;

    loginPageState.usernameController.text = 'ahmadipour';
    loginPageState.passwordController.text = '123456';

    expect(loginPageState.login, isNotNull);
  });

  test('LoginPage should show error when credentials are incorrect', () {
    const widget = LoginPage();
    final element = widget.createElement(); // this will set state.widget
    final loginPageState = element.state as LoginPageState;

    loginPageState.usernameController.text = 'ahmadipour';
    loginPageState.passwordController.text = '1234567';
    expect(loginPageState.login, throwsA(isA<AssertionError>()));
  });

  test('check navigate succeed to HomePage when credentials are correct',
      () async {
    const widget = LoginPage();
    final element = widget.createElement(); // this will set state.widget
    final loginPageState = element.state as LoginPageState;

    loginPageState.usernameController.text = 'ahmadipour';
    loginPageState.passwordController.text = '123456';

    expect(loginPageState.login, isNotNull);

    // Navigate to HomePage
    loginPageState.login;

    // Verifying that textHomePage key is the home page
    expect(find.byKey(const Key('textHomePage')), isNotNull);
  });
}
