import 'package:flower/core/utils/app_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';




void navigation(context, String path) {
  GoRouter.of(context).push(
    path,
  );
}

void goBack(context) {
  GoRouter.of(context).pop();
}

void navigationWithReplace(context, String path) {
  GoRouter.of(context).pushReplacement(
    path,
  );
}

getOrientation(context) {
  return MediaQuery.of(context).orientation;
}

bool isPortrait(context) {
  if (getOrientation(context) == Orientation.portrait) {
    return true;
  } else {
    return false;
  }
}

double getScreenHeight(
  context,
) =>
    MediaQuery.of(
      context,
    ).size.height;
double getScreenWidth(
  context,
) =>
    MediaQuery.of(
      context,
    ).size.height;

Widget addSpace([
  double height = 0,
  double width = 0,
]) {
  return SizedBox(
    height: AppSize.getHeight(
      height,
    ),
    width: AppSize.getWidth(
      width,
    ),
  );
}
