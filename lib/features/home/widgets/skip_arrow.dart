import 'package:flower/core/utils/app_function.dart';
import 'package:flower/core/utils/app_size.dart';
import 'package:flower/core/utils/shapes/left_shape.dart';
import 'package:flower/core/utils/shapes/right_shape.dart';
import 'package:flutter/material.dart';

class SkipArrow extends StatelessWidget {
  const SkipArrow({super.key, required this.right, required this.left});
  final IconData right;
  final IconData left;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const Spacer(),
        SizedBox(
          height:isPortrait(context)? AppSize.getHeight(
            50,
          ):AppSize.getHeight(
            55,
          ),
          width:isPortrait(context)? AppSize.getWidth(
            45,
          ): AppSize.getWidth(
            25,
          ),
          child: CustomPaint(
            size: Size(
              100,
              (100 * 0.5833333333333334).toDouble(),
            ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: LeftShape(),
            child:  Icon(
             left,
              
              size:28,
            ),
          ),
        ),
        Spacer(),
        SizedBox(
            height:isPortrait(context)? AppSize.getHeight(
            50,
          ):AppSize.getHeight(
            55,
          ),
          width:isPortrait(context)? AppSize.getWidth(
            45,
          ): AppSize.getWidth(
            25,
          ),
          child: CustomPaint(
            size: Size(
              100,
              (100 * 0.5833333333333334).toDouble(),
            ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RightShape(),
            child: Icon(
            right,
              size:28,
            ),
          ),
        ),
      ],
    );
  }
}
