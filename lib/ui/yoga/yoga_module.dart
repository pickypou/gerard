import 'package:gerard/ui/yoga/yoga.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

import '../ui_module.dart';

@singleton
class YogaModule implements UIModule {
  final AppRouter _appRouter;
  YogaModule(this._appRouter);

  @override
  void configure() {
    _appRouter.addRoutes(getRoutes());
  }
  @override
  List<RouteBase> getRoutes()  {
    return [
      GoRoute(
        path: '/yoga',
        builder: (context, state) =>  const Yoga(),
      )
    ];
  }

  @override
  Map<String, WidgetBuilder> getSharedWidgets() {
    // Implémentation de la méthode manquante
    return {};
  }
}