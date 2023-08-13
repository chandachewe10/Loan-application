import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final IconData? prefixIcon;
  final String? labelText;
  final TextInputType? textInputType;

  const InputForm({super.key, this.prefixIcon, this.labelText, this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
