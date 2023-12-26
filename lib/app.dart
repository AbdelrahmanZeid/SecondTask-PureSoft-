import 'package:flower/core/routes/app-routes.dart';
import 'package:flower/core/utils/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Flower extends StatelessWidget {
  const Flower({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return ScreenUtilInit(
      designSize: const Size(
        360,
        690,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (
        _,
        child,
      ) =>
          MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.getAppTheme(
          context,
        ),
      ),
    );
  }
}
