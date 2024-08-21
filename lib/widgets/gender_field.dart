import 'package:flutter/material.dart';

class GenderField extends StatefulWidget {
  const GenderField({super.key});

  @override
  State<GenderField> createState() => _GenderFieldState();
}

class _GenderFieldState extends State<GenderField> {
  String? _selectGender;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 15,
      width: size.width * 0.90,
      child: DropdownButton(
        value: _selectGender,
        onChanged: (value) {
          _selectGender = value as String;
        },
        items: const [
          DropdownMenuItem(value: 'Home', child: Text('Home'),),
          DropdownMenuItem(value: 'Femme', child: Text('Femme'),),
          // const DropdownMenuItem(child: Text('Autre'), value: 'Autre',),
        ],
        hint: const Text('Sexe'),
      ),
    );
  }
}
