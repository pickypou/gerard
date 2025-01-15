import 'package:flutter/material.dart';
import 'package:gerard/ui/taiso/taiso.dart';
import 'package:gerard/ui/ui_module.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@singleton
class TaisoModule implements UIModule {

  final AppRouter _appRouter;

  TaisoModule(this._appRouter);

  @override
  void configure() {
    _appRouter.addRoutes(getRoutes());
  }
  @override
  List<RouteBase> getRoutes() {
    return [
      GoRoute(
        path: "/taiso",
        builder: (context, state) => const Taiso(),
      )
    ];
  }
  @override
  Map<String, WidgetBuilder> getSharedWidgets() {
    // Implémentation de la méthode manquante
    return {};
  }
}