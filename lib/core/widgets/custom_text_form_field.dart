import 'package:academy/core/styles/colors_manger.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:flutter/material.dart';



class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.suffix,
    this.validator,
    this.onTap,
    this.readOnly = false,
    this.controller,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.maxLines = 1 ,
  });
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String hintText;
  final void Function()? onTap;
  final bool readOnly;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final bool obscureText;
  final int? maxLines ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: Colors.black,
      validator: validator,
      onChanged: onChanged,
      onTap: onTap,
      obscureText: obscureText,
      readOnly: readOnly,
      maxLines: maxLines,
      style: TextStylesManager.font16Medium,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStylesManager.font14Medium.copyWith(color: const Color(0xFFBDB9CC)),
        suffixIcon: suffixIcon,
        suffix: suffix,
        
        // fillColor: Colors.white,
        // filled: true,
        // focusColor: Colors.white,
        // hoverColor: Colors.white,
        focusedBorder: focusBorderDecoration(),
        enabledBorder: borderDecoration(),
        errorBorder: errorBorderDecoration(),
        focusedErrorBorder: focusBorderDecoration(),
      ),
    );
  }

  OutlineInputBorder focusBorderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: ColorsManger.primaryColor, width: 1.5),
    );
  }

  OutlineInputBorder borderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color:  Color(0xFFBDB9CC), width: 1),
    );
  }

  OutlineInputBorder errorBorderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.red, width: 1.5),
    );
  }
}
