import 'package:flower/core/utils/app_color.dart';
import 'package:flower/core/utils/app_function.dart';
import 'package:flower/core/utils/app_size.dart';
import 'package:flutter/material.dart';

class ControlSpeed extends StatelessWidget {
  const ControlSpeed({super.key, required this.speed});
  final String speed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width:isPortrait(context)? AppSize.getWidth(
            20,
          ):AppSize.getWidth(
          8,
          ),
          height:isPortrait(context)? AppSize.getHeight(
            18,
          ):AppSize.getHeight(
            20,
          ),
          decoration: BoxDecoration(
            color: AppColor.lightGreen,
            borderRadius: BorderRadius.circular(
              40,
            ),
          ),
          child: const Icon(
            Icons.remove,
            size: 10,
            color: Colors.black,
          ),
        ),
        Text(
          speed,
          style: TextStyle(
            fontSize:isPortrait(context)? AppSize.getFontSize(
              14,
            ):AppSize.getFontSize(
              8,
            ),
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
         width:isPortrait(context)? AppSize.getWidth(
            20,
          ):AppSize.getWidth(
          8,
          ),
          height:isPortrait(context)? AppSize.getHeight(
            18,
          ):AppSize.getHeight(
            20,
          ),
          decoration: BoxDecoration(
            color: AppColor.lightGreen,
            borderRadius: BorderRadius.circular(
              40,
            ),
          ),
          child: const Icon(
            Icons.add,
            size: 10,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
