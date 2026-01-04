import 'package:flutter/material.dart';
import 'package:gerard/ui/theme.dart';
import 'package:flutter_web_plugins/url_strategy.dart'; // Import nécessaire

import 'core/di/di.dart';
import 'core/router/router_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy(); // Activation des URLs propres

  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouterConfig = getIt<AppRouterConfig>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Gerard coach sportif',
      theme: theme,
      routerConfig: appRouterConfig.router,
    );
  }
}
