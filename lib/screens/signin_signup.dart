import 'package:flutter/material.dart';

import '../screens/signin.dart';
import '../screens/signup.dart';
import '../widgets/my_button.dart';

class SigninSignup extends StatelessWidget {
  const SigninSignup({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white38,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.lock, size: 100),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  const Text(
                    'Mossosouk\nSeller',
                    style: TextStyle(
                      fontSize: 24,
                      // fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  MyButton(
                    buttonText: 'Se connecter',
            butthonWidth: size.width * 0.75,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Signin(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  MyButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Signup(),
                        ),
                      );
                    },
                    buttonText: 'S\'inscrire',
            butthonWidth: size.width * 0.75,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
