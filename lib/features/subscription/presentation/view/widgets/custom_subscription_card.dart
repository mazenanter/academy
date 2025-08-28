import 'package:academy/core/styles/colors_manger.dart';
import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:academy/features/subscription/presentation/view/widgets/custom_radio.dart';
import 'package:academy/features/subscription/presentation/view/widgets/custom_background_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomSubscriptionCard extends StatelessWidget {
  const CustomSubscriptionCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.desc,
    required this.priceAfterDiscount,
    required this.priceBeforeDiscount,
    this.isSelected = false,
    required this.onTap,
  });
  final String title, subtitle, desc, priceAfterDiscount, priceBeforeDiscount;
  final bool isSelected;
  final void Function() onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: CustomBackgroundCard(
        isSelected: isSelected,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(title, style: TextStylesManager.font18Bold),
                Spacer(),
                CustomRadio(isSelected: isSelected),
              ],
            ),
            Gap(10.h),
            Text(
              subtitle,
              style: TextStylesManager.font14Medium.copyWith(
                color: ColorsManger.grayColor,
              ),
            ),
            Gap(10.h),
            Text(
              desc,
              style: TextStylesManager.font14Regular.copyWith(
                color: ColorsManger.grayColor,
              ),
            ),
            Gap(10.h),
            Row(
              children: [
                Text(
                  priceAfterDiscount,
                  style: TextStylesManager.font14Bold.copyWith(
                    color: ColorsManger.primaryColor,
                  ),
                ),
                Spacer(),
                Text(
                  priceBeforeDiscount,
                  style: TextStylesManager.font14Medium.copyWith(
                    color: Color(0xFFBDB9CC),
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Color(0xFFBDB9CC),
                    decorationThickness: 3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
