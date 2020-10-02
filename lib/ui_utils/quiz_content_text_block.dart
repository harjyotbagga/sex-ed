import 'package:flutter/material.dart';

class QuizContentTextBlock extends StatelessWidget {
  final contentText;
  final fontweight;
  final fontSize;
  final fontColor;
  final fontStyle;

  const QuizContentTextBlock({
    @required this.contentText,
    @required this.fontSize,
    @required this.fontColor,
    @required this.fontweight,
    this.fontStyle = FontStyle.normal,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        contentText,
        style: TextStyle(
            fontStyle: fontStyle,
            fontWeight: fontweight,
            fontSize: fontSize,
            color: fontColor
        ),
      ),
    );
  }
}
