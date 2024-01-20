import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.label, // required maksudnya agar parameter ini wajib di masukan
    required this.icon,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // untuk membuat kolom inputan/ dalam hal ini untuk inputan username dan password
      autocorrect: false,
      textInputAction: TextInputAction.next,
      style: TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xFF595669),
          ),
        ),
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
        labelText: label,
        // widget Icon untuk membuat icon
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        filled: true,
        fillColor: Color(0xFF595669),
      ),
    );
  }
}
