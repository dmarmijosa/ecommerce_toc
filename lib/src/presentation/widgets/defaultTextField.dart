import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  String label;
  IconData icon;
  Function(String text) onChanged;
  bool obscureText;
  final TextInputType keyboardType;

  DefaultTextField(
      {required this.label,
      required this.icon,
      required this.onChanged,
      this.keyboardType = TextInputType.text,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (text) {
        onChanged(text);
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        label: Text(label, style: TextStyle(color: Colors.white)),
        prefixIcon: Icon(icon, color: Colors.white),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
