import 'package:flutter/material.dart';
import 'package:gerard/ui/coaching_individuel/coaching_individuel.dart';
import 'package:gerard/ui/ui_module.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';


@singleton
class CoachingIndividuelModule implements UIModule{
  final AppRouter _appRouter;
   CoachingIndividuelModule(this._appRouter);

  @override
  void configure() {
    _appRouter.addRoutes(getRoutes());
  }
  @override
  List<RouteBase> getRoutes() {
    return [
      GoRoute(
          path: '/coaching',
      builder: (context, state) => const CoachingIndividuel(),
      )
    ];
  }
  @override
  Map<String, WidgetBuilder> getSharedWidgets() {
    // Implémentation de la méthode manquante
    return {};
  }
}
