import 'package:flower/core/utils/app_color.dart';
import 'package:flower/core/utils/app_function.dart';
import 'package:flower/core/utils/app_size.dart';
import 'package:flower/core/utils/shapes/lock_shape.dart';
import 'package:flower/features/home/widgets/custom_app_bar.dart';
import 'package:flower/features/home/widgets/custom_flower_items.dart';
import 'package:flower/features/home/widgets/skip_arrow.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isPortrait(
        context,
      )
          ? double.infinity
          : AppSize.getHeight(
              600,
            ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColor.darkGreen,
            AppColor.green,
          ],
        ),
      ),
      child: isPortrait(context)
          ? Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 30,
                  ),
                  child: CustomAppBar(),
                ),
                isPortrait(context)
                    ? addSpace(
                        10,
                      )
                    : addSpace(
                        5,
                      ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: CustomFlowerItems(),
                ),
                const SkipArrow(
                  right: Icons.arrow_forward_ios,
                  left: Icons.arrow_back_ios,
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
                    ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: LockShape(
                      color: AppColor.white,
                    ),
                    child: const Icon(
                      Icons.lock,
                    ),
                  ),
                ),
              ],
            )
          : ListView(
              shrinkWrap: true,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 30,
                  ),
                  child: CustomAppBar(),
                ),
                isPortrait(context)
                    ? addSpace(
                        10,
                      )
                    : addSpace(
                        5,
                      ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: CustomFlowerItems(),
                ),
                const SkipArrow(
                  right: Icons.arrow_forward_ios,
                  left: Icons.arrow_back_ios,
                ),
                //  const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal:385,
                  ),
                  child: SizedBox(
                    height: AppSize.getHeight(
                      45,
                    ),
                    width: AppSize.getWidth(
                      90,
                    ),
                    child: CustomPaint(
                      size: Size(
                        100,
                        (100 * 0.5833333333333334).toDouble(),
                      ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: LockShape(
                        color: AppColor.white,
                      ),
                      child: const Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
