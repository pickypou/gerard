import 'package:flutter/material.dart';
import 'package:gerard/ui/tarif_horaires/tarifs_horaires.dart';
import 'package:gerard/ui/ui_module.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@singleton
class TarifsHoraireModule implements UIModule {
  final AppRouter _appRouter;
  TarifsHoraireModule(this._appRouter);

  @override
  void configure() {
    _appRouter.addRoutes(getRoutes());
  }

  @override
  List<RouteBase> getRoutes() {
    return [
      GoRoute(
          path: '/tarifsHoraires',
      builder: (context, state) =>  const TarifsHoraires()
      )
    ];
  }
  @override
  Map<String, WidgetBuilder> getSharedWidgets() {
    // Implémentation de la méthode manquante
    return {};
  }
}