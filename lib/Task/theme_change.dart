import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({super.key});

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Yo Man!',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Text(
                                "It's a simple example of dark theme",
                                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500,color: Colors.grey),
                    textAlign: TextAlign.center,
                              ),
                ),
                SizedBox(height: 110,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      light =  ThemeData.light();
                    });
                  },
                  child: Container(
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFFCC00),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text('Light Icon',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      light = ThemeData.dark();
                    });
                  },
                  child: Container(
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffFD3B31),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text('Dark Icon',style: TextStyle(fontSize: 32 ,fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

var light=ThemeData.light();