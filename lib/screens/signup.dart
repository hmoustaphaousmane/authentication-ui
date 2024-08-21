import 'package:auth_ui/widgets/gender_field.dart';
import 'package:auth_ui/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../widgets/footer.dart';
import '../widgets/my_button.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
              height: size.height * 0.025,
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
                      'S\'inscrire',
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
              height: size.height * 0.025,
            ),

            //email & password section
            const MyTextField(label: 'Email'),
            SizedBox(
              height: size.height * 0.015,
            ),
            const MyTextField(label: 'Mot de passe', obscureText: true),
            SizedBox(
              height: size.height * 0.015,
            ),
            const MyTextField(label: 'Nom complet'),
            SizedBox(
              height: size.height * 0.015,
            ),
            // phone number
            IntlPhoneField(
              decoration: const InputDecoration(
                labelText: 'Numero de telephone',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'TD',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            const GenderField(),
            SizedBox(
              height: size.height * 0.025,
            ),

            //sign in button

            MyButton(
              onTap: () {},
              buttonText: 'S\'inscrire',
              butthonWidth: size.width * 0.75,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),

            //footer section. sign up text here
            const Footer(),
            SizedBox(
              height: size.height * 0.0375,
            ),
          ],
        ),
      ),
    );
  }
}
