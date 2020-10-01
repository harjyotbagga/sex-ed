import 'package:flutter/material.dart';
import 'package:sex_ed/screens/welcome_screen.dart';
import 'package:sex_ed/screens/reg_screen1.dart';
import 'package:sex_ed/screens/reg_screen2.dart';
import 'package:sex_ed/screens/reg_screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //brightness: Brightness.light,
        fontFamily: 'Cerebri Sans',
      ),
      home: RegScreen3(),
//      initialRoute: WelcomeScreen.id,
//      routes: {
//        WelcomeScreen.id: (context) => WelcomeScreen(),
//      },
    );
  }
}
