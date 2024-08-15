import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key, required this.buttonText, this.onTap});

  final String buttonText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
