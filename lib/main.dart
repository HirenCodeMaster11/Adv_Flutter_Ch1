import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Task/Provider & Change Theme using Provider/Provider/Provider.dart';
import 'Task/Provider & Change Theme using Provider/view/Change_Theme_Using_Provider.dart';
import 'Task/stepper_example.dart';
import 'Task/stepper_example_2.dart';
import 'Task/theme_change.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> ThemeProvider(),
      builder: (context,child) => MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.light(
            surface: Colors.purple,
            onInverseSurface: Colors.green,
            onTertiary: Colors.blue,
            onTertiaryContainer: Colors.orange,
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: ColorScheme.dark(
            surface: Colors.orange,
            onInverseSurface: Colors.blue,
            onTertiary: Colors.pink,
            onTertiaryContainer: Colors.yellow,
          ),
        ),
        themeMode: Provider.of<ThemeProvider>(context).isDark? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        routes: {
          // '/' : (context)=> ChangeTheme(),
          '/' : (context) => Change_Theme_Using_Provider(),
        },
      ),
    );
  }
}
