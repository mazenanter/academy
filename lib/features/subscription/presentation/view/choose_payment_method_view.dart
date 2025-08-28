import 'package:academy/core/widgets/back_screen.dart';
import 'package:academy/features/subscription/presentation/view/widgets/choose_payment_method_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoosePaymentMethodView extends StatelessWidget {
  const ChoosePaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackScreen(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: ChoosePaymentMethodViewBody(),
          ),
        ),
      ),
    );
  }
}
