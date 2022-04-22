import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

class LoginPageUser {

  final emailField = find.byKey(const Key('emailField'));

  final passwordField = find.byKey(const Key('passwordField'));

  final buttonSignIn = find.byKey(const Key('loginButton'));

  final emailErrorFinder = find.text('Please enter a valid email');

}
