import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sex_ed/ui_utils/constants.dart';

class ForumCard extends StatelessWidget {
  final timestamp;
  final cardTopic;
  final cardDescription;
  final voteCount;
  final commentCount;
  final onComment;
  final questionUser;
  final answerUser;

  const ForumCard({
    @required this.timestamp,
    @required this.cardTopic,
    @required this.cardDescription,
    @required this.voteCount,
    @required this.commentCount,
    @required this.onComment,
    @required this.questionUser,
    @required this.answerUser,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: questionUser,
                        backgroundColor: Color(0xFFC5CAEB),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            timestamp,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: kSecondaryContentColor
                            ),
                          ),
                          Text(
                            cardTopic,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,
                                color: kPrimaryContentColor
                            ),
                          ),
                          Text(
                            cardDescription,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: kSecondaryContentColor
                            ),
                          ),
                          RichText(
                              text: TextSpan(
                                text: "See more",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                  color: kTertiaryContentColor,
                                ),
                                recognizer: TapGestureRecognizer()..onTap = ()=>{},
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_upward,
                                        color: kTertiaryContentColor,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 2.0),
                                        child: Text(
                                            "$voteCount Votes",
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w400
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.comment_bank_outlined,
                                        color: kTertiaryContentColor,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                                        child: Text(
                                            "$commentCount Comments",
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w400
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: answerUser,
                        backgroundColor: Color(0xFFC5CAEB),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: TextField(
                            onChanged: onComment,
                            style: TextStyle(
                                fontSize: 14.0
                            ),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                ),
                                filled: true,
                                fillColor: Color(0x15616AD2),
                                hintText: "Leave a comment"
                            ),
                          )
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

