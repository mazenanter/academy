
import 'package:academy/core/styles/colors_manger.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  const CustomRadio({
    super.key,
    required this.isSelected,
  });
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Radio(value: isSelected ? 1 : 0, groupValue: 1, onChanged: (value) {},
    activeColor: ColorsManger.primaryColor,
    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
    );
  }
}
