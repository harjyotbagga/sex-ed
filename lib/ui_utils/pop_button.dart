import 'package:flutter/material.dart';

class PopButton extends StatelessWidget {
  final leftPadding;
  final rightPadding;
  final topPadding;
  final bottomPadding;
  final onPressed;
  final crossColor;

  const PopButton({
    Key key,
    this.leftPadding=0.0,
    this.rightPadding=0.0,
    this.topPadding=0.0,
    this.bottomPadding=0.0,
    @required this.onPressed,
    @required this.crossColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: leftPadding, right: rightPadding, top: topPadding, bottom: bottomPadding),
        child: RawMaterialButton(
          constraints: BoxConstraints.tightFor(
              width: 56.0,
              height: 56.0
          ),
          elevation: 6.0,
          shape: CircleBorder(),
          fillColor: Colors.white,
          onPressed: onPressed,
          child: Icon(Icons.clear, color: crossColor),
        )
    );
  }
}
