import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drift_1/di/injection_container.dart';
import 'package:flutter_drift_1/core/route/app_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:injectable/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  initializeDependencies();
  runApp(MyApp());
}

@RoutePage()
@injectable
class MyApp extends HookWidget {
  final AppRouter _appRouter = getIt<AppRouter>();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
