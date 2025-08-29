import 'package:academy/core/styles/colors_manager.dart';
import 'package:flutter/material.dart';

class BackScreen extends StatelessWidget {
  const BackScreen({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,

              child: Image.asset("assets/back_draw.png", fit: BoxFit.cover),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/back_draw.png", fit: BoxFit.cover),
            ),
            ...[child],
          ],
        ),
      ),
    );
  }
}
