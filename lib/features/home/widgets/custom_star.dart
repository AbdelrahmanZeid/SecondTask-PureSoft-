
import 'package:flower/core/utils/app_color.dart';
import 'package:flower/core/utils/app_function.dart';
import 'package:flutter/material.dart';

class CustomStar extends StatelessWidget {
  const CustomStar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(
          Icons.star,
          size:isPortrait(context)? 12:15,
          color: AppColor.yellow,
        ),
        Icon(
          Icons.star,
          color: AppColor.yellow,
          size:isPortrait(context)? 12:15,
        ),
        Icon(
          Icons.star,
          color: AppColor.yellow,
          size:isPortrait(context)? 12:15,
        ),
        Icon(
          Icons.star,
          color: AppColor.grey,
          size:isPortrait(context)? 12:15,
        ),
        Icon(
          Icons.star,
          size:isPortrait(context)? 12:15,
          color: AppColor.grey,
        ),
      ],
    );
  }
}