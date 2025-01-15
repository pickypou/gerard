

import 'package:gerard/ui/gym_douce/gym_douce.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

import '../ui_module.dart';

@singleton
class GymDouceModule implements UIModule {
  final AppRouter _appRouter;
  GymDouceModule(this._appRouter);

  @override
  void configure() {
    _appRouter.addRoutes(getRoutes());
  }
  @override
  List<RouteBase> getRoutes()  {
    return [
      GoRoute(
        path: '/gym_douce',
        builder: (context, state) =>  const GymDouce(),
      )
    ];
  }

  @override
  Map<String, WidgetBuilder> getSharedWidgets() {
    // Implémentation de la méthode manquante
    return {};
  }
}