import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'providers/home_app_bar_provider.dart';
import 'providers/project_provider.dart';
import 'routes.dart';
import 'utilities/app_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // ignore: always_specify_types
      providers: [
        ChangeNotifierProvider<HomeAppBarProvider>(
          create: (BuildContext context) => HomeAppBarProvider(),
        ),
        ChangeNotifierProvider<ProjectProvider>(
          create: (BuildContext context) => ProjectProvider(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        title: 'Dev Markar',
        theme: ThemeData(
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: AppColors.primary,
            onPrimary: Colors.white,
            secondary: AppColors.secondary,
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.redAccent,
            background: Colors.white,
            onBackground: Colors.white70,
            surface: Colors.white,
            onSurface: Colors.white60,
          ),
        ),
      ),
    );
  }
}

// Platform  Firebase App Id
// web       1:340247617516:web:cf306fcc718ec4b5e92ac9
// android   1:340247617516:android:f0c94a184518e914e92ac9
// ios       1:340247617516:ios:34a8fac2aeac4eb2e92ac9