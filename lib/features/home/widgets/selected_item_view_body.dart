import 'package:flower/core/utils/app_function.dart';

import 'package:flower/features/home/views/selected_item_land.dart';
import 'package:flower/features/home/views/selected_item_portrait.dart';

import 'package:flutter/material.dart';

class SelectedItemViewBody extends StatelessWidget {
  const SelectedItemViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return isPortrait(context)
        ? const SelectedItemPortrait()
        : const SelectedItemLand();
  }
}
