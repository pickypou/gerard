import 'package:flutter/material.dart';
import 'package:gerard/ui/ui_module.dart';
import 'package:gerard/ui/yoga_parents_enfants/yoga_parents_enfants.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@singleton
class YogaParentsEnfantsModule implements UIModule {
  final AppRouter _appRouter;
  YogaParentsEnfantsModule(this._appRouter);

  @override
  void configure() {
    _appRouter.addRoutes(getRoutes());
  }
  @override
  List<RouteBase> getRoutes() {
    return [
      GoRoute(path: '/parentsEnfants',
      builder: (context, state) => const YogaParentsEnfants(),
      )
    ];
  }
  @override
  Map<String, WidgetBuilder> getSharedWidgets() {
    return {};
  }
}

