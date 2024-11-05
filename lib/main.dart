//  packages
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/Count.dart';

// classes
import './classes/Config.dart';

//  pages
import './pages/Start_Page.dart';
import './pages/End_Page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Count()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // (this page) variables
  final String filename = 'main.dart';

  // (this page) methods
  void _buildTriggered() {
    if (kDebugMode) {
      print('<<< Loaded "boilerplate" version ${ Config.app_version } >>>');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _buildTriggered();

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: 'Start_Page',
      theme: custom_theme,
      routes: {
        'Start_Page': (context) => const Start_Page(),
        'End_Page': (context) => const End_Page(),
      },
    );
  }
}

final ThemeData custom_theme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.purple,
      foregroundColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
);
