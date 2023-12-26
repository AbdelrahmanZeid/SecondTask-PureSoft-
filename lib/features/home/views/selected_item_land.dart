import 'package:flower/core/utils/app_color.dart';
import 'package:flower/core/utils/app_function.dart';
import 'package:flower/core/utils/app_size.dart';
import 'package:flower/core/utils/app_strings.dart';
import 'package:flower/core/utils/assets.dart';
import 'package:flower/core/utils/shapes/lock_shape.dart';
import 'package:flower/core/utils/shapes/speed_shape.dart';
import 'package:flower/features/home/widgets/custom_size_button.dart';
import 'package:flower/features/home/widgets/skip_arrow.dart';
import 'package:flutter/material.dart';

class SelectedItemLand extends StatelessWidget {
  const SelectedItemLand({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: AppSize.getWidth(
            280,
          ),
          height: AppSize.getHeight(
            250,
          ),
          decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(
                350,
                250,
              ),
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 15,
                left: 120,
                child: Image.asset(
                  AppAssets.flowerOne,
                  width: AppSize.getWidth(
                    170,
                  ),
                  height: AppSize.getHeight(
                    190,
                  ),
                ),
              ),
              Positioned(
                bottom: -55,
                left: 270,
                child: SizedBox(
                  width: AppSize.getWidth(
                    50,
                  ),
                  height: AppSize.getHeight(
                    55,
                  ),
                  child: CustomPaint(
                    size: Size(
                      100,
                      (100 * 0.5833333333333334).toDouble(),
                    ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: SpeedShape(),
                    child: Center(
                      child: Text(
                        "X2",
                        style: TextStyle(
                          fontSize: AppSize.getFontSize(
                            12,
                          ),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 160,
                top: 90,
                child: Column(
                  children: [
                    const CustomSizeButton(
                      color: Color(
                        0xff8DD585,
                      ),
                      text: 'M',
                      textColor: Colors.black,
                    ),
                    addSpace(
                      5,
                    ),
                    const CustomSizeButton(
                      color: Color(
                        0xffEFFAEE,
                      ),
                      text: 'L',
                      textColor: Color(
                        0xffD5DFD1,
                      ),
                    ),
                    addSpace(
                      5,
                    ),
                    const CustomSizeButton(
                      color: Color(
                        0xffEFFAEE,
                      ),
                      text: 'XL',
                      textColor: Color(
                        0xffD5DFD1,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 140,
                right: 290,
                child: Container(
                  width: AppSize.getWidth(
                    16,
                  ),
                  height: AppSize.getHeight(
                    37,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                    color: const Color(
                      0xff7AA36C,
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(
                      0xff99DC91,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 278,
                top: 185,
                child: Column(
                  children: [
                    Text(
                      AppStrings.peperomia,
                      style: TextStyle(
                        fontSize: AppSize.getFontSize(
                          8,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      AppStrings.birdOfParadise,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppSize.getFontSize(
                          3,
                        ),
                        color: const Color(
                          0xffAEAAAF,
                        ),
                      ),
                    ),
                    Text(
                      "\$100",
                      style: TextStyle(
                        fontSize: AppSize.getFontSize(
                          10,
                        ),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // addSpace(
        //   25,
        // ),
        const SkipArrow(
          left: Icons.person,
          right: Icons.home,
        ),
        addSpace(
          15,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.add,
              size: 40,
            ),
            Icon(
              Icons.remove,
              size: 40,
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal:380,
          ),
          child: SizedBox(
            height: AppSize.getHeight(
             25,
            ),
            width: AppSize.getWidth(
              65,
            ),
            child: CustomPaint(
              size: Size(
                100,
                (100 * 0.5833333333333334).toDouble(),
              ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: LockShape(
                color: AppColor.lightGreen,
              ),
              child: const Icon(
                Icons.lock,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
