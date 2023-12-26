import 'package:flower/core/utils/app_function.dart';
import 'package:flower/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    delayedNavigate(
      context,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isPortrait(context)
        ? Opacity(
            opacity: .8,
            child: Image.asset(
              AppAssets.splash,
              fit: BoxFit.fitHeight,
              height: double.infinity,
            ),
          )
        : SizedBox(
            width: double.infinity,
            child: Image.asset(
              AppAssets.splash,
              fit: BoxFit.fill,
            ),
          );
  }
}

delayedNavigate(context) {
  Future.delayed(
    const Duration(
      seconds: 4,
    ),
    () => navigationWithReplace(
      context,
      "/homeview",
    ),
  );
}
