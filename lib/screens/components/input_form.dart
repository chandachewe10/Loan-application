import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final IconData? prefixIcon;
  final String? labelText;
  final TextInputType? textInputType;
  final bool isPassword;

  const InputForm({super.key, this.prefixIcon, this.labelText, this.textInputType, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: isPassword!,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
