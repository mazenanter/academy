import 'package:academy/core/styles/colors_manager.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String hint;
  final IconData icon;
  final bool obscure;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.obscure = false,
    this.keyboardType,
     this.controller,
     this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
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
