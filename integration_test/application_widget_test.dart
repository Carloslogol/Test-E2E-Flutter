import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:login_ui/main.dart';

import 'user_interface/login_page_user.dart';
import 'user_interface/login_successful_page_user.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('E2E Widget test', () {
    testWidgets('Given registered user open the application'
                'When press login button'
                'Then error label will appear',
            (WidgetTester tester) async {
      /** Given */
      await tester.pumpWidget(const MyApp());

      /** When */
      await tester.tap(LoginPageUser().buttonSignIn);
      await tester.pump(const Duration(milliseconds: 1000));

      /** Then */
      expect(LoginPageUser().emailErrorFinder, findsOneWidget);
    });

    testWidgets('Given registered user open the application'
                'When fill in all fields'
                'Then to complete the registration',
            (WidgetTester tester) async {

      /** Given */
      await tester.pumpWidget(const MyApp());

      /** When */
      await tester.enterText(LoginPageUser().emailField, 'corre@gmail.com');
      await tester.pumpAndSettle();
      await tester.enterText(LoginPageUser().passwordField, 'carloslogol');
      await tester.pumpAndSettle();

      await tester.tap(LoginPageUser().buttonSignIn);
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 2));

      /** Then */
      expect(LoginSuccessfulPageUser().labelRegisterComplete, findsOneWidget);
    });
  });
}
