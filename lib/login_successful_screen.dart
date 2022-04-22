import 'package:flutter/material.dart';
import 'package:login_ui/login_screen.dart';

class LoginSuccessfulPage extends StatefulWidget {
  const LoginSuccessfulPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginSuccessfulPage> createState() => _LoginSuccessfulState();
}

class _LoginSuccessfulState extends State<LoginSuccessfulPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Complete login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const LoginPage(title: 'Login UI')
                      )
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15)
                ),
                child: const Text(
                  'Back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

