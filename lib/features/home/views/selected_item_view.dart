import 'package:flower/core/utils/app_color.dart';

import 'package:flower/features/home/widgets/selected_item_view_body.dart';
import 'package:flutter/material.dart';

class SelectedItemView extends StatelessWidget {
  const SelectedItemView({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: AppColor.darkGreen,
      body: SelectedItemViewBody(),
    );
  }
}
