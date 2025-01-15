
import 'package:gerard/ui/stretching/stretching.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

import '../ui_module.dart';

@singleton
class StretchingModule implements UIModule {
  final AppRouter _appRouter;
  StretchingModule(this._appRouter);

  @override
  void configure() {
    _appRouter.addRoutes(getRoutes());
  }
  @override
  List<RouteBase> getRoutes()  {
    return [
      GoRoute(
        path: '/stretching',
        builder: (context, state) =>  const Stretching(),
      )
    ];
  }

  @override
  Map<String, WidgetBuilder> getSharedWidgets() {
    // Implémentation de la méthode manquante
    return {};
  }
}