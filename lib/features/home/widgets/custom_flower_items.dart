import 'package:flower/core/utils/app_function.dart';
import 'package:flower/core/utils/app_strings.dart';
import 'package:flower/core/utils/assets.dart';
import 'package:flower/features/home/widgets/custom_flower_item.dart';
import 'package:flutter/material.dart';

class CustomFlowerItems extends StatelessWidget {
  const CustomFlowerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomFlowerItem(
          image: AppAssets.mainImage,
          title: AppStrings.bananaTree,
          price: '\$78',
          speed: ' x2 ',
        ),
        addSpace(
          20,
        ),
        const CustomFlowerItem(
          image: AppAssets.flowerTwo,
          title: AppStrings.sanseveria,
          price: '\$15',
          speed: ' x1 ',
        ),
        addSpace(
          20,
        ),
        const CustomFlowerItem(
          image: AppAssets.five,
          title: AppStrings.strelitzia,
          price: '\$100',
          speed: ' x6 ',
        ),
        addSpace(
          20,
        ),
        GestureDetector(
          onTap: () => navigation(
            context,
            "/selecteditemview",
          ),
          child: const CustomFlowerItem(
            image: AppAssets.flowerOne,
            title: AppStrings.peperomia,
            price: '\$35',
            speed: ' x0 ',
          ),
        ),
      ],
    );
  }
}
