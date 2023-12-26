
import 'package:flower/core/utils/app_function.dart';
import 'package:flower/core/utils/app_size.dart';
import 'package:flutter/material.dart';

class CustomSizeButton extends StatelessWidget {
  const CustomSizeButton(
      {super.key,
      required this.color,
      required this.text,
      required this.textColor});
  final Color color;
  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:isPortrait(context)? AppSize.getWidth(
        30,
      ): AppSize.getWidth(
        15,
      ),
      height:isPortrait(context)? AppSize.getHeight(
        28,
      ): AppSize.getHeight(
        34,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          360,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
