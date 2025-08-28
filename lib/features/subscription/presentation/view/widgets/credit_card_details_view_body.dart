import 'package:academy/core/styles/colors_manger.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:academy/core/widgets/app_text_button.dart';
import 'package:academy/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CreditCardDetailsViewBody extends StatefulWidget {
  const CreditCardDetailsViewBody({super.key});

  @override
  State<CreditCardDetailsViewBody> createState() =>
      _CreditCardDetailsViewBodyState();
}

class _CreditCardDetailsViewBodyState extends State<CreditCardDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(30.h),
            Text("Credit Card Details", style: TextStylesManager.font20Bold),
            Gap(10.h),
            Text(
              "Lorem ipsum dolor sit amet consectetur. Eu eget tristique quis risus quam. Aliquam quis amet euismod vitae sollicitudin.",
              style: TextStylesManager.font16Regular.copyWith(
                color: ColorsManger.grayColor,
              ),
            ),
            Gap(30.h),
            CustomTextFormField(hintText: "Card Number"),
            Gap(20.h),
            Row(
              children: [
                Expanded(child: CustomTextFormField(hintText: "Expiry")),
                Gap(10.w),
                Expanded(child: CustomTextFormField(hintText: "CVV/CVC")),
              ],
            ),
            Gap(100.h),
            AppTextButton(
              text: "Pay 22 USD",
              textStyle: TextStylesManager.font22Medium.copyWith(
                color: Colors.white,
              ),
              onPressed: () {},
              borderRadius: 24,
            ),
            Gap(10.h),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Back to the payment method",
                    style: TextStylesManager.font16Regular.copyWith(
                      color: Color(0xff0E97CD),
                    ),
                  ),
                ),
              ),
            ),
            Gap(60.h),
          ],
        ),
      ),
    );
  }
}
