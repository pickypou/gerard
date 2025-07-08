// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../ui/coaching_individuel/coaching_individuel_module.dart' as _i967;
import '../../ui/contact/contact_module.dart' as _i106;
import '../../ui/gym_douce/gym_douce_module.dart' as _i813;
import '../../ui/stretching/stretching_module.dart' as _i40;
import '../../ui/taiso/taiso_module.dart' as _i270;
import '../../ui/tarif_horaires/tarifs_horaires_module.dart' as _i597;
import '../../ui/ui_module.dart' as _i573;
import '../../ui/view_all/view_all_module.dart' as _i261;
import '../../ui/yoga/yoga_module.dart' as _i45;
import '../../ui/yoga_parents_enfants/yoga_parents_enfants_module.dart'
    as _i349;
import '../router/router_config.dart' as _i718;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i718.AppRouterConfig>(() => _i718.AppRouterConfig());
  gh.singleton<_i573.AppRouter>(() => _i573.AppRouter());
  gh.singleton<_i967.CoachingIndividuelModule>(
      () => _i967.CoachingIndividuelModule(gh<_i573.AppRouter>()));
  gh.singleton<_i106.ContactModule>(
      () => _i106.ContactModule(gh<_i573.AppRouter>()));
  gh.singleton<_i813.GymDouceModule>(
      () => _i813.GymDouceModule(gh<_i573.AppRouter>()));
  gh.singleton<_i40.StretchingModule>(
      () => _i40.StretchingModule(gh<_i573.AppRouter>()));
  gh.singleton<_i270.TaisoModule>(
      () => _i270.TaisoModule(gh<_i573.AppRouter>()));
  gh.singleton<_i597.TarifsHoraireModule>(
      () => _i597.TarifsHoraireModule(gh<_i573.AppRouter>()));
  gh.singleton<_i261.ViewAllModule>(
      () => _i261.ViewAllModule(gh<_i573.AppRouter>()));
  gh.singleton<_i45.YogaModule>(() => _i45.YogaModule(gh<_i573.AppRouter>()));
  gh.singleton<_i349.YogaParentsEnfantsModule>(
      () => _i349.YogaParentsEnfantsModule(gh<_i573.AppRouter>()));
  return getIt;
}
