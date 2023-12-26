
import 'package:flower/core/utils/app_size.dart';
import 'package:flutter/material.dart';

class CustomLockIcon extends StatelessWidget {
  const CustomLockIcon({super.key, required this.bgColor});
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.getWidth(
        55,
      ),
      height: AppSize.getHeight(
        36,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius:const  BorderRadius.only(
          topRight: Radius.circular(
            30,
          ),
          topLeft: Radius.circular(
            30,
          ),
        ),
      ),
      child: const Icon(
        Icons.lock,
      ),
    );
  }
}
