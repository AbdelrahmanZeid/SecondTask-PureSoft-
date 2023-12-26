import 'package:flower/features/home/views/home_view.dart';
import 'package:flower/features/home/views/selected_item_view.dart';
import 'package:flower/features/splash/splash.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: '/homeview',
      builder: (context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: '/selecteditemview',
      builder: (context, GoRouterState state) {
        return const SelectedItemView();
      },
    ),
  ],
);
