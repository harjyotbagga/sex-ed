import 'package:flutter/material.dart';
import 'package:sex_ed/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //brightness: Brightness.light,
        fontFamily: 'Cerebri Sans',
      ),
      home: HomeScreen(),
//      initialRoute: WelcomeScreen.id,
//      routes: {
//        WelcomeScreen.id: (context) => WelcomeScreen(),
//      },
    );
  }
}
