import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sex_ed/ui_utils/constants.dart';
import 'package:sex_ed/ui_utils/search_bar.dart';
import 'package:sex_ed/ui_utils/forum-card.dart';

class ForumScreen extends StatefulWidget {
  static String id = "forum_screen";
  @override
  _ForumScreenState createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: device_height,
        width: device_width,
        decoration: kBackgroundDecor,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SearchBar(
                      hintText: "Search for query",
                      onChanged: (searchTerm) {},
                    ),
                  ),
                  for(int i=0; i<5;i++) ForumCard(
                    questionUser: AssetImage("images/default_profile_pic.jpg"),
                    answerUser: AssetImage("images/default_profile_pic.jpg"),
                    timestamp: "1m by @anonymousUser",
                    cardTopic: "Abdominal pain and discomfort",
                    cardDescription: "I (18F) masturbated 3 days ago. Since then, I felt mild discomfort on my lower abdomen. Now past 3 days and... ",
                    voteCount: 32,
                    commentCount: 132,
                    onComment: (value) {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

