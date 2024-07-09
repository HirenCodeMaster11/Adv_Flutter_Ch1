import 'package:flutter/material.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/' : (context)=> ChangeTheme(),
        '/' : (context) => StepperExample2(),
      },
    );
  }
}
