import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/favourite_app.dart';
import 'package:provider_course/provider/count_example.dart';
import 'package:provider_course/provider/favourite_item_provider.dart';
import 'package:provider_course/provider/slider_provider.dart';
import 'package:provider_course/provider/theme_mode_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => SliderProvider()),
        ChangeNotifierProvider(create: (context) => FavouriteItemProvider()),
        ChangeNotifierProvider(create: (context) => ThemeModeProvider()),
      ],
      child:
          Consumer<ThemeModeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          themeMode: themeProvider.themeMode,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            iconTheme: const IconThemeData(
              color: Colors.blue, // Icon color in light mode
            ),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            iconTheme: const IconThemeData(
              color: Colors.red, // Icon color in dark mode
            ),
          ),
          home: const MyFavouriteItems(),
        );
      }),
    );
  }
}
