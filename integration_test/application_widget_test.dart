import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:login_ui/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('E2E Widget test', () {
    testWidgets('Should display fields for user', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      final fieldEmail = find.byKey(const Key('emailField'));
      final fieldPassword = find.byKey(const Key('passwordField'));

      await tester.ensureVisible(fieldEmail);
      await tester.ensureVisible(fieldPassword);

      //sleep(const Duration(seconds: 2));

    });
    
    testWidgets('Load register view', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      final btnRegister = find.byKey(const Key('btnRegister'));

      await tester.tap(btnRegister);
      await tester.pumpAndSettle();
    
      expect(find.text("Already registered?"), findsOneWidget);

    });

    testWidgets('Label error for field email', (WidgetTester tester) async {

      await tester.pumpWidget(const MyApp());

      final buttonSignIn = find.byKey(const Key('loginButton'));
      final emailErrorFinder = find.text('Please enter a valid email');

      await tester.tap(buttonSignIn);
      await tester.pump(const Duration(milliseconds: 1000));

      expect(emailErrorFinder, findsOneWidget);
    });

    testWidgets('Label login correct', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      final fieldEmail = find.byKey(const Key('emailField'));
      final fieldPassword = find.byKey(const Key('passwordField'));
      final buttonSignIn = find.byKey(const Key('loginButton'));

      await tester.enterText(fieldEmail, 'corre@gmail.com');
      await tester.pumpAndSettle();
      await tester.enterText(fieldPassword, 'carloslogol');
      await tester.pumpAndSettle();

      await tester.tap(buttonSignIn);
      await tester.pumpAndSettle();

      expect(find.text('Has sido logeado correctamente!'), findsOneWidget);

    });
  });

}
