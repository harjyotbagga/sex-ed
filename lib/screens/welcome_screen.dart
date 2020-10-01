import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sex_ed/ui_utils/constants.dart';
import 'package:sex_ed/ui_utils/bottom_reg_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
          child: Container(
            height: device_height,
            width: device_width,
            decoration: kBackgroundDecor,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 0.40*device_height,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Image.asset('images/sex_logo.png'),
                      ),
                      Text(
                        "MORE Info.",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                        ),
                      ),
                      Text(
                        "LESS Weird.",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                        ),
                      ),
                      Text(
                        "Breaking the Taboo of sex at a young age.",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      ),
                      BottomRegButton(buttonTitle: "Getting Started", onPressed: () {}),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Already have an account? Log in",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )

    );
  }
}

