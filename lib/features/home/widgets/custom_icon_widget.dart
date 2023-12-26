
import 'package:flower/core/utils/app_color.dart';
import 'package:flower/core/utils/app_function.dart';
import 'package:flower/core/utils/app_size.dart';
import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.getWidth(
        25,
      ),
      height: AppSize.getHeight(
        18,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            width:isPortrait(context)? AppSize.getWidth(
              20,
            ): AppSize.getWidth(
              12,
            ),
            height:isPortrait(context)? AppSize.getHeight(
              2,
            ):AppSize.getHeight(
              3,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            width:isPortrait(context)? AppSize.getWidth(
              30,
            ): AppSize.getWidth(
            15,
            ),
            height:isPortrait(context)? AppSize.getHeight(
              2,
            ):AppSize.getHeight(
              3,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            width:isPortrait(context)? AppSize.getWidth(
              15,
            ): AppSize.getWidth(
              8,
            ),
            height:isPortrait(context)? AppSize.getHeight(
              2,
            ):AppSize.getHeight(
              3,
            ),
          ),
        ],
      ),
    );
  }
}
