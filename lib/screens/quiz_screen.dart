import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sex_ed/ui_utils/bottom_reg_button.dart';
import 'package:sex_ed/ui_utils/constants.dart';
import 'package:sex_ed/ui_utils/pop_button.dart';
import 'package:sex_ed/ui_utils/quiz_content_text_block.dart';


enum QuizOption {option1, option2, option3}

class QuizScreen extends StatefulWidget {
  static String id = "quiz_screen";
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  QuizOption _quizOption = QuizOption.option1;
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
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 0.3*device_height,
                        width: double.infinity,
                        child: Image.asset(
                          "images/quiz_sample_image.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      PopButton(
                        leftPadding: 0.05*device_width,
                        topPadding: 0.1*device_width,
                        onPressed: () {},
                        crossColor: Colors.black
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 0.025*device_height,
                          ),
                          QuizContentTextBlock(
                              contentText: "Sexual Orientation",
                              fontSize: 22.0,
                              fontColor: kPrimaryContentColor,
                              fontweight: FontWeight.w500
                          ),
                          QuizContentTextBlock(
                            contentText: "10-12 mins",
                            fontSize: 14.0,
                            fontColor: kSecondaryContentColor,
                            fontweight: FontWeight.w400,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1.0,
                            ),
                          ),
                          QuizContentTextBlock(
                              contentText: "Summary",
                              fontSize: 18.0,
                              fontColor: kPrimaryContentColor,
                              fontweight: FontWeight.w500
                          ),
                          QuizContentTextBlock(
                              contentText: "Sexual orientation is a term used to describe your pattern of emotional, romantic or sexual attraction. Sexual orientation may include attraction to the same gender (homosexuality), a gender... ",
                              fontSize: 14.0,
                              fontColor: kTertiaryContentColor,
                              fontweight: FontWeight.w400
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1.0,
                            ),
                          ),
                          QuizContentTextBlock(
                              contentText: "Quiz",
                              fontSize: 20.0,
                              fontColor: kPrimaryContentColor,
                              fontweight: FontWeight.w500
                          ),
                          QuizContentTextBlock(
                              contentText: "What are the four types of consent you have learnt about from the video/ article?",
                              fontSize: 14.0,
                              fontColor: kSecondaryContentColor,
                              fontweight: FontWeight.w400
                          ),
                          SizedBox(
                            height: 0.025*device_height,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: RadioListTile(
                              title: Text(
                                "implied consent, expressed consent, informed consent and unanimous consent.",
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              activeColor: Colors.black,
                              value: QuizOption.option1,
                              groupValue: _quizOption,
                              onChanged: (QuizOption value) {
                                setState(() {
                                  _quizOption = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 0.02*device_height,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: RadioListTile(
                              title: Text(
                                "unimplied consent, Unexpressed consent, explicit consent, exposed consent",
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              activeColor: Colors.black,
                              value: QuizOption.option2,
                              groupValue: _quizOption,
                              onChanged: (QuizOption value) {
                                setState(() {
                                  _quizOption = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 0.02*device_height,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: RadioListTile(
                              title: Text(
                                "what is consent?",
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              activeColor: Colors.black,
                              value: QuizOption.option3,
                              groupValue: _quizOption,
                              onChanged: (QuizOption value) {
                                setState(() {
                                  _quizOption = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 0.02*device_height,
                          ),
                          BottomRegButton(
                            buttonTitle: "SUBMIT",
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

