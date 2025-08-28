import 'package:academy/core/styles/colors_manger.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:academy/core/widgets/app_text_button.dart';
import 'package:academy/features/subscription/presentation/view/widgets/custom_subscription_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SubscriptionViewBody extends StatefulWidget {
  const SubscriptionViewBody({super.key});

  @override
  State<SubscriptionViewBody> createState() => _SubscriptionViewBodyState();
}

class _SubscriptionViewBodyState extends State<SubscriptionViewBody> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(20.h),
          Text('Subscription Options', style: TextStylesManager.font26Bold),
          Gap(10.h),
          Text(
            'Lorem ipsum dolor sit amet consectetur. Eu eget tristique quis risus quam. Aliquam quis amet euismod vitae sollicitudin.',
            style: TextStylesManager.font16Regular.copyWith(
              color: ColorsManger.grayColor,
            ),
          ),
          Gap(20.h),
          CustomSubscriptionCard(
            title: 'Yearly',
            subtitle: '🔥 Most Popular',
            desc:
                'Enjoy all features on a yearly basis and save more with our special discount',
            priceAfterDiscount: '200 USD/Month',
            priceBeforeDiscount: '250 USD/Month',
            isSelected: selectedIndex == 0,
            onTap: () {
              if (selectedIndex != 0) {
                setState(() {
                  selectedIndex = 0;
                });
              }
            },
          ),
          Gap(10.h),
          CustomSubscriptionCard(
            title: 'Monthly',
            subtitle: 'Standard Plan',
            desc:
                'Enjoy all features on a monthly basis and pay month by month with full flexibility',
            priceAfterDiscount: '50 USD/Month',
            priceBeforeDiscount: '100 USD/Month',
            isSelected: selectedIndex == 1,
            onTap: () {
              if (selectedIndex != 1) {
                setState(() {
                  selectedIndex = 1;
                });
              }
            },
          ),
          Gap(40.h),
          AppTextButton(
            text: "Next",
            textStyle: TextStylesManager.font22Bold.copyWith(color: Colors.white),
            onPressed: () {},
            borderRadius: 24,
          ),
          Gap(10.h),
          GestureDetector(
            onTap: () {
              // navigate to home view
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Continue without plan',
                  style: TextStylesManager.font18Regular.copyWith(
                    color: Color(0xFF0E97CD),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
