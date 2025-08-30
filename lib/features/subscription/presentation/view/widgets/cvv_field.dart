import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_subscription_text_form_field.dart';

class CVVField extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  CVVField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSubscriptionTextFormField(
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
