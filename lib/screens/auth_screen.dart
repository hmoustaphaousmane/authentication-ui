import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../widgets.dart/button_widget.dart';
import '../widgets.dart/footer_widget.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isLoginVisible = false;
  bool _isSignUpVisible = false;

  void _toggleLogin() {
    setState(() {
      _isLoginVisible = !_isLoginVisible;
      _isSignUpVisible = false;
    });
  }

  void _toggleSignUp() {
    setState(() {
      _isSignUpVisible = !_isSignUpVisible;
      _isLoginVisible = false;
    });
  }

  void _closeOverlay() {
    setState(() {
      _isLoginVisible = false;
      _isSignUpVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Mossosouk\nSeller',
                    style: TextStyle(
                      fontSize: 24,
                      // fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  MyButton(
                    buttonText: 'Se connecter',
                    onTap: _toggleLogin,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    onTap: _toggleSignUp,
                    buttonText: 'S\'inscrire',
                  ),
                ],
              ),
            ),
            if (_isLoginVisible) _buildLoginOverlay(context),
            if (_isSignUpVisible) _buildSignUpOverlay(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginOverlay(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Positioned.fill(
          child: Material(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.black),
                        onPressed: _closeOverlay,
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
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 8,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 8,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyButton(
                    onTap: () {},
                    buttonText: 'Se connecter',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpOverlay(BuildContext context) {
    return SafeArea(
      child: Expanded(
        flex: 9,
        child: Positioned.fill(
          child: Material(
            color: Colors.white, // White background for the overlay
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.black),
                        onPressed: _closeOverlay,
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
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 1,
                    style: const TextStyle(
                      height: 0.25,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 8,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 8,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Nom complet',
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // TextField(
                  //   maxLines: 1,
                  //   style: const TextStyle(fontSize: 8,),
                  //   decoration: InputDecoration(
                  //     labelText: 'Numéro de téléphone',
                  //     filled: true,
                  //     fillColor: Colors.grey[200],
                  //   ),
                  // ),
                  IntlPhoneField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'TD',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 8,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Sexe',
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  const SizedBox(height: 20),
                  MyButton(
                    onTap: () {},
                    buttonText: 'S\'inscrire',
                  ),
                  const SizedBox(height: 20),
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
