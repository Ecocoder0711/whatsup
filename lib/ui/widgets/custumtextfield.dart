// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustumTextField extends StatelessWidget {
  const CustumTextField({
    super.key,
    this.onChanged,
    this.hinttext,
    this.message,
    this.focusNode,
  });
  final void Function(String)? onChanged;
  final String? hinttext;
  final String? message;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      focusNode: focusNode,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0x339E9E9E),
        hintText: hinttext,
        hintStyle: TextStyle(fontFamily: "Ag 14", fontSize: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return message;
        }
        return null;
      },
    );
  }
}
