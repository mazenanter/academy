import 'package:academy/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreditCardInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String digitsOnly = newValue.text.replaceAll(' ', '');
    final StringBuffer buffer = StringBuffer();

    for (int i = 0; i < digitsOnly.length; i++) {
      buffer.write(digitsOnly[i]);
      int index = i + 1;
      if (index % 4 == 0 && index != digitsOnly.length) {
        buffer.write(' '); // Add space after every 4 digits
      }
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length),
    );
  }
}

class CreditCardField extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  CreditCardField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(16), 
        CreditCardInputFormatter(),
      ],
      hintText: 'Credit Card Number',
    );
  }
}
