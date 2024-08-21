import 'package:auth_ui/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/footer.dart';
import '../widgets/my_button.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 240, 243, 247),
      body: SafeArea(
        child: Column(
          children: [
            // give space from top
            SizedBox(
              height: size.height * 0.05,
            ),

            // page context
            buildCard(context, size),
          ],
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, Size size) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        // border: Border(
        //   top: BorderSide(
        //     color: Colors.black,
        //   ),
        //   left: BorderSide(
        //     color: Colors.black,
        //   ),
        //   right: BorderSide(
        //     color: Colors.black,
        //   ),
        // ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Colors.white,
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //header text
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'Se connecter',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: size.height * 0.05,
            ),

            //email & password section
            const MyTextField(label: 'Email'),
            SizedBox(
              height: size.height * 0.03,
            ),
            const MyTextField(label: 'Mot de passe', obscureText: true),
            SizedBox(
              height: size.height * 0.05,
            ),

            //sign in button

            MyButton(
              onTap: () {},
              buttonText: 'Se connecter',
              butthonWidth: size.width * 0.75,
            ),
            SizedBox(
              height: size.height * 0.1,
            ),

            //footer section. sign up text here
            const Footer(),
            SizedBox(
              height: size.height * 0.075,
            ),
          ],
        ),
      ),
    );
  }
}
