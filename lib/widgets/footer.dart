import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Text(
                  'Ou',
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ),
              const Expanded(
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.05),
          MyButton(
            buttonText: 'Google',
            butthonWidth: size.width * 0.75,
            onTap: null,
          ),
          SizedBox(height: size.height * 0.03),
          MyButton(
            buttonText: 'Facebook',
            butthonWidth: size.width * 0.75,
            onTap: null,
          ),
        ],
      ),
    );
  }
}
