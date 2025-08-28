import 'package:academy/core/styles/colors_manger.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:academy/core/widgets/app_text_button.dart';
import 'package:academy/features/subscription/presentation/view/widgets/custom_credit_card.dart';
import 'package:academy/features/subscription/presentation/view/widgets/custom_paypal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ChoosePaymentMethodViewBody extends StatefulWidget {
  const ChoosePaymentMethodViewBody({super.key});

  @override
  State<ChoosePaymentMethodViewBody> createState() =>
      _ChoosePaymentMethodViewBodyState();
}

class _ChoosePaymentMethodViewBodyState
    extends State<ChoosePaymentMethodViewBody> {
  int selectedPaymentMethodIndex = 0;
   @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // disable landscape mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(30.h),
        Text(
          'Choose the payment method',
          style: TextStylesManager.font20Bold,
        ),
        Gap(10.h),
        Text(
          'Lorem ipsum dolor sit amet consectetur. Eu eget tristique quis risus quam. Aliquam quis amet euismod vitae sollicitudin.',
          style: TextStylesManager.font16Regular.copyWith(
            color: ColorsManger.grayColor,
          ),
        ),
        Gap(40.h),
        CustomCreditCard(
          isSelected: selectedPaymentMethodIndex == 0,
          onTap: () {
            if (selectedPaymentMethodIndex != 0) {
              setState(() {
                selectedPaymentMethodIndex = 0;
              });
            }
          },
        ),
        Gap(16.h),
        CustomPaypalCard(
          isSelected: selectedPaymentMethodIndex == 1,
          onTap: () {
            if (selectedPaymentMethodIndex != 1) {
              setState(() {
                selectedPaymentMethodIndex = 1;
              });
            }
          },
        ),
        Spacer(),
        AppTextButton(
          text: 'Next',
          onPressed: () {},
          textStyle: TextStylesManager.font22Bold.copyWith(
            color: Colors.white,
          ),
          borderRadius: 24,
        ),
        Gap(10.h),
        Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Continue without plan',
                style: TextStylesManager.font18Regular.copyWith(
                  color: Color(0xff0E97CD),
                ),
              ),
            ),
          ),
        ),
        Gap(40.h),
      ],
    );
  }
}
