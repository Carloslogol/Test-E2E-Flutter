import 'package:flutter/material.dart';
import 'package:login_ui/register_screen.dart';

class RegisterSuccessfulPage extends StatefulWidget {
  const RegisterSuccessfulPage({Key? key, required this.title}): super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _RegisterSuccessfulState();
}

class _RegisterSuccessfulState extends State<RegisterSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Complete register',
              key: Key('labelRegister'),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            ElevatedButton(
              key: const Key('buttonBack'),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const RegisterPage(title: 'Register UI')
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
            )
          ],
        ),
      ),
      ),
    );
  }
}