import 'package:academy/core/styles/text_styles_manager.dart';
import 'package:academy/core/utils/app_images.dart';
import 'package:academy/features/subscription/presentation/view/widgets/custom_background_card.dart';
import 'package:academy/features/subscription/presentation/view/widgets/custom_radio.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomCreditCard extends StatelessWidget {
  const CustomCreditCard({super.key, required this.isSelected, required this.onTap});
  final bool isSelected;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomBackgroundCard( isSelected: isSelected,
      child: Row(
        children: [
          CustomRadio(isSelected: isSelected),
          Text("Credit Card" , style : TextStylesManager.font14Medium),
          Spacer(),
          Image.asset(Assets.mezaCard ),
          SvgPicture.asset(Assets.masterCard),
          SvgPicture.asset(Assets.visaCard),
        ],
      ),
      ),
    );
  }
}