import 'package:flutter/material.dart';
import 'package:gerard/ui/coaching_individuel/coaching_individuel_module.dart';
import 'package:gerard/ui/contact/contact_module.dart';
import 'package:gerard/ui/gym_douce/gym_douce_module.dart';
import 'package:gerard/ui/stretching/stretching_module.dart';
import 'package:gerard/ui/taiso/taiso_module.dart';
import 'package:gerard/ui/tarif_horaires/tarifs_horaires_module.dart';
import 'package:gerard/ui/yoga/yoga_module.dart';
//import 'package:gerard/ui/yoga_parents_enfants/yoga_parents_enfants_module.dart';
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
      ...getIt<StretchingModule>().getRoutes(),
      //...getIt<YogaParentsEnfantsModule>().getRoutes(),
      ...getIt<TaisoModule>().getRoutes(),
      ...getIt<CoachingIndividuelModule>().getRoutes(),
      ...getIt<TarifsHoraireModule>().getRoutes(),
      ...getIt<ContactModule>().getRoutes()
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