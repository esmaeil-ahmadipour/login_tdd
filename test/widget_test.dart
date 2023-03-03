import 'package:flutter/material.dart';
import 'package:login_tdd/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Test for checking credentials and navigating to Home page on successful login attempt.
  testWidgets('Login test', (WidgetTester tester) async {
    // Creating the LoginPage widget and adding it to the widget tree.
    await tester.pumpWidget(const MyApp());

    // Finding the username and password fields in the widget tree.
    Finder usernameField = find.byKey(const Key('username'));
    Finder passwordField = find.byKey(const Key('password'));

    // Entering the correct credentials in the username and password fields.
    await tester.enterText(usernameField, 'ahmadipour');
    await tester.enterText(passwordField, '123456');

    // Finding the login button in the widget tree and tapping it.
    Finder loginButton = find.byKey(const Key('login'));
    await tester.tap(loginButton);

    //waits for the widget tree to finish building and rendering before continuing with the test
    await tester.pumpAndSettle();

    // Verify that the new page is displayed.
    expect(find.byKey(const Key('textHomePage')), findsOneWidget);
  });
}
