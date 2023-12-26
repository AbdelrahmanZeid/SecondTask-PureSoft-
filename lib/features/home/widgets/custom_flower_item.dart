import 'package:flower/core/utils/app_color.dart';
import 'package:flower/core/utils/app_function.dart';
import 'package:flower/core/utils/app_size.dart';
import 'package:flower/features/home/widgets/control_speed.dart';
import 'package:flower/features/home/widgets/custom_star.dart';
import 'package:flower/core/utils/shapes/flower_painter_item.dart';
import 'package:flutter/material.dart';

class CustomFlowerItem extends StatelessWidget {
  const CustomFlowerItem(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.speed});
  final String image;
  final String title;
  final String price;
  final String speed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isPortrait(context)
          ? AppSize.getHeight(
              110,
            )
          : AppSize.getHeight(
              170,
            ),
      width: isPortrait(context)
          ? AppSize.getWidth(
              310,
            )
          : AppSize.getWidth(
              220,
            ),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: isPortrait(context)
            ? BorderRadius.circular(
                45,
              )
            : BorderRadius.circular(
                35,
              ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                45,
              ),
              bottomLeft: Radius.circular(
                45,
              ),
            ),
            child: Image.asset(
              image,
              width: AppSize.getWidth(
                80,
              ),
              height: AppSize.getHeight(
               100,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomStar(),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: isPortrait(context)
                      ? AppSize.getFontSize(
                          25,
                        )
                      : AppSize.getFontSize(
                          12,
                        ),
                ),
              ),
              Text(
                price,
                style: TextStyle(
                  color: AppColor.green,
                  fontSize: isPortrait(context)
                      ? AppSize.getFontSize(
                          15,
                        )
                      : AppSize.getFontSize(
                          8,
                        ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              ControlSpeed(
                speed: speed,
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            height: isPortrait(context)
                ? AppSize.getHeight(
                    50,
                  )
                : AppSize.getHeight(
                    60,
                  ),
            width: isPortrait(context)
                ? AppSize.getWidth(
                    58,
                  )
                : AppSize.getWidth(
                    40,
                  ),
            child: CustomPaint(
              size: Size(
                100,
                (100 * 0.5833333333333334).toDouble(),
              ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: FlowerItemPainter(),
              child: const Icon(
                Icons.lock,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
