import 'package:flutter/material.dart';
import 'package:gerard/ui/gym_douce/gym_douce_module.dart';
import 'package:gerard/ui/stretching/stretching_module.dart';
import 'package:gerard/ui/yoga/yoga_module.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import '../../core/di/di.dart';
import '../../ui/view_all/view_all_module.dart';


@singleton
class AppRouterConfig {
  GoRouter get router => GoRouter(
    routes: [
      ...getIt<ViewAllModule>().getRoutes(),
      ...getIt<GymDouceModule>().getRoutes(),
      ...getIt<YogaModule>().getRoutes(),
      ...getIt<StretchingModule>().getRoutes()
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );
}


class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Page not found'),
      ),
    );
  }
}