import 'package:flutter/material.dart';
import 'package:sex_ed/screens/home_screen.dart';
import 'package:sex_ed/screens/login_screen.dart';
import 'package:sex_ed/screens/splash_screen.dart';
import 'package:sex_ed/screens/welcome_screen.dart';
import 'package:sex_ed/screens/reg_screen1.dart';
import 'package:sex_ed/screens/reg_screen2.dart';
import 'package:sex_ed/screens/reg_screen3.dart';

void main() => runApp(SexEdApp());

class SexEdApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //brightness: Brightness.light,
        fontFamily: 'Cerebri Sans',
      ),
//      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegScreen1.id: (context) => RegScreen1(),
        RegScreen2.id: (context) => RegScreen2(),
        RegScreen3.id: (context) => RegScreen3(),
        LoginScreen.id: (context) => LoginScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
