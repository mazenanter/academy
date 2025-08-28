import 'package:academy/core/widgets/back_screen.dart';
import 'package:academy/features/subscription/presentation/view/widgets/credit_card_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditCardDetailsView extends StatelessWidget {
  const CreditCardDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackScreen(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 26.w),
            child: CreditCardDetailsViewBody(),
          ),
        ),
      ),
    );
  }
}
