import 'package:flower/core/utils/app_color.dart';
import 'package:flower/core/utils/app_function.dart';
import 'package:flower/core/utils/app_size.dart';
import 'package:flower/core/utils/app_strings.dart';
import 'package:flower/features/home/widgets/custom_icon_widget.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back_ios,
          size: 25,
          color: AppColor.white.withOpacity(
            .5,
          ),
        ),
        Text(
          AppStrings.decorativeFlower,
          style: TextStyle(
            fontSize:isPortrait(context)? AppSize.getFontSize(
              22,
            ):AppSize.getFontSize(
             13,
            ),
            color: AppColor.white,
            fontWeight:FontWeight.w600,
          ),
        ),
        const CustomIconWidget(),
      ],
    );
  }
}
