
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  int? maxLines;
  String? Function(String?)? validator ;
  DefaultTextFormField({
    required this.controller,
    required this.hintText,
    this.maxLines,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
      minLines: 1,
      maxLines: maxLines,
      validator: validator,
      
    );
  
  }
}
