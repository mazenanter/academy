import 'package:academy/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        verticalSpace(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/google.png"),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset("assets/facebook.png"),
              onPressed: () {},
            ),
            IconButton(icon: Image.asset("assets/apple.png"), onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
