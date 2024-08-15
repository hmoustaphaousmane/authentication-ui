import 'package:auth_ui/widgets.dart/button_widget.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(height: 10),
          const MyButton(
            buttonText: 'Google',
            onTap: null,
          ),
          const SizedBox(height: 10),
          const MyButton(
            buttonText: 'Facebook',
            onTap: null,
          ),
        ],
      ),
    );
  }
}
