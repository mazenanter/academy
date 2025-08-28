import 'package:academy/core/helpers/extenstions.dart';
import 'package:academy/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/spacing.dart';
import '../../core/styles/colors_manger.dart';
import '../../core/styles/text_styles_manager.dart';
import '../../core/widgets/app_text_button.dart';
import '../../core/widgets/back_screen.dart';
import 'dart:async';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int _secondsRemaining = 120; // 2 minutes
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _secondsRemaining = 120;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  String get _formattedTime {
    final minutes = (_secondsRemaining ~/ 60).toString().padLeft(1, '0');
    final seconds = (_secondsRemaining % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackScreen(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 59.h, horizontal: 16.w),
        child: Column(
          children: [
            Text('Verify Code',
                textAlign: TextAlign.center,
                style: TextStylesManager.font26Bold),
            verticalSpace(10),
            Text(
              'An 6 digit code has been sent to your email ',
              textAlign: TextAlign.center,
              style: TextStylesManager.font16Regular,
            ),
            verticalSpace(50),
            _otp(context: context),
            verticalSpace(50),
            AppTextButton(
              text: 'Verify',
              textStyle: TextStylesManager.font22Bold
                  .copyWith(color: Colors.white),
              onPressed: () {
                context.pushNamed(Routes.resetPasswordScreen);
              },
            ),
            verticalSpace(50),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("OTP will be expired in ",
                      style: TextStylesManager.font16Medium),
                  GestureDetector(
                    onTap: () {
                      // Optionally restart timer
                      _startTimer();
                    },
                    child: Text(
                      " $_formattedTime",
                      style: TextStylesManager.font16Medium
                          .copyWith(color: ColorsManger.blueColor),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(24),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn’t received the code? ",
                      style: TextStylesManager.font16Medium),
                  GestureDetector(
                    onTap: () {
                      // Resend code logic + restart timer
                      _startTimer();
                    },
                    child: Text("Resend",
                        style: TextStylesManager.font16Medium
                            .copyWith(color: ColorsManger.blueColor)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _otp({required BuildContext context}) {
    return OtpTextField(
      numberOfFields: 6,
      borderColor: const Color(0xFF512DA8),
      showFieldAsBox: true,
      borderRadius: BorderRadius.all(Radius.circular(4.r)),
      autoFocus: true,
      fieldWidth: 52.h,
      fieldHeight: 60.h,
      fillColor: Colors.white,
      filled: true,
      onSubmit: (String verificationCode) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Verification Code"),
              content: Text('Code entered is $verificationCode'),
            );
          },
        );
      },
    );
  }
}
