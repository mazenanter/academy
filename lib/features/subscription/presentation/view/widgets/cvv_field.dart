import 'package:academy/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CVVField extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  CVVField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4), // CVV is usually 3 or 4 digits
      ],
      obscureText: true, // hide digits like a password
      hintText: 'CVV/CVC',
    );
  }
}
