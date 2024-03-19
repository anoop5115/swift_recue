import 'package:flutter/material.dart';

TextField textField(String Text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
      fillColor: Colors.black38,
      filled: true,
      hintText: "${Text}",
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black38),
          borderRadius: BorderRadius.circular(25)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
          borderRadius: BorderRadius.circular(25)),
    ),
  );
}
