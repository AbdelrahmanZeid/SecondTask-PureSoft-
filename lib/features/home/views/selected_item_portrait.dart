
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

class SelectedItemPortrait extends StatelessWidget {
  const SelectedItemPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: AppSize.getHeight(
            500,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage(
                AppAssets.flowerOne,
              ),
            ),
            color: AppColor.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(
                200,
                220,
              ),
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: -77,
                left: 128,
                child: SizedBox(
                  width: AppSize.getWidth(
                    130,
                  ),
                  height: AppSize.getHeight(
                    65,
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
                            30,
                          ),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 340,
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
                top: 380,
                right: 110,
                child: Container(
                  width: AppSize.getWidth(
                    50,
                  ),
                  height: AppSize.getHeight(
                    45,
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
                left: 130,
                top: 480,
                child: Column(
                  children: [
                    Text(
                      AppStrings.peperomia,
                      style: TextStyle(
                        fontSize: AppSize.getFontSize(
                          27,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      AppStrings.birdOfParadise,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(
                          0xffAEAAAF,
                        ),
                      ),
                    ),
                    Text(
                      "\$100",
                      style: TextStyle(
                        fontSize: AppSize.getFontSize(
                          30,
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
          45,
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
        SizedBox(
          height: AppSize.getHeight(
            35,
          ),
          width: AppSize.getWidth(
            65,
          ),
          child: CustomPaint(
            size: Size(
              100,
              (100 * 0.5833333333333334).toDouble(),
            ), 
            painter: LockShape(
              color: AppColor.lightGreen,
            ),
            child: const Icon(
              Icons.lock,
              
            ),
          ),
        ),
      ],
    );
  }
}