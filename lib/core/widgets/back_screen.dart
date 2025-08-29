import 'package:academy/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class BackScreen extends StatelessWidget {
  const BackScreen({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,

            child: Image.asset(Assets.backDraw, fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(Assets.backDraw, fit: BoxFit.cover),
          ),
          ...[child],
        ],
      ),
    );
  }
}
