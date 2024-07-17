import 'package:adv_flutter_ch1/Task/Contact%20Us%20Page%20With%20Interaction/Screen/ContactPage.dart';
import 'package:adv_flutter_ch1/Task/Contact%20Us%20Page%20With%20Interaction/provider/ContactPageProvider.dart';
import 'package:adv_flutter_ch1/Task/One%20Time%20Intro%20Screen%20in%20Flutter/HomeScreen/home.dart';
import 'package:adv_flutter_ch1/Task/Photo%20Gallery%20With%20Biometric%20Authentication/View/PhotoPage/PhotoPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Task/One Time Intro Screen in Flutter/Provider/Provider.dart';
import 'Task/One Time Intro Screen in Flutter/Screen 1/Screen1.dart';
import 'Task/Photo Gallery With Biometric Authentication/Provider/Provider.dart';
import 'Task/Provider & Change Theme using Provider/Provider/Provider.dart';
import 'Task/Provider & Change Theme using Provider/view/Change_Theme_Using_Provider.dart';
import 'Task/Quotes Data Solving with Provider/Provider/QuoteProvider.dart';
import 'Task/Quotes Data Solving with Provider/View/QuotesData.dart';
import 'Task/stepper_example.dart';
import 'Task/stepper_example_2.dart';
import 'Task/theme_change.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  // bool iShows = sharedPreferences.getBool('show') ?? false;
  runApp(
    ChangeNotifierProvider(
      create: (context) => PhotoProvider(),
      builder: (context, child) => const MyApp(),
    ),
  );
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
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   colorScheme: ColorScheme.light(
      //     surface: Colors.purple,
      //     onInverseSurface: Colors.green,
      //     onTertiary: Colors.blue,
      //     onTertiaryContainer: Colors.orange,
      //   ),
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   colorScheme: ColorScheme.dark(
      //     surface: Colors.orange,
      //     onInverseSurface: Colors.blue,
      //     onTertiary: Colors.pink,
      //     onTertiaryContainer: Colors.yellow,
      //   ),
      // ),
      // themeMode: Provider.of<ThemeProvider>(context).isDark
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      // routes: {
      //   // '/' : (context)=> ChangeTheme(),
      //   // '/' : (context) => Change_Theme_Using_Provider(),
      //   // '/': (context) => Change_Theme_Using_Provider(),
      //   // '/': (context) => Screen1(),
      //   // '/home' : (context) => HomeScreen(),
      // },
      // home: Provider.of<PageProvider>(context).isShow ? HomeScreen() : Screen1(),
      routes: {
        '/' : (context) => PhotoScreen(),
      },
    );
  }
}