import 'package:academy/core/styles/colors_manager.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool obscure;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: ColorsManager.grey),
        hintText: hint,
        hintStyle: TextStylesManager.font14Regular,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: ColorsManager.white,
      ),
    );
  }
}
