import 'package:flutter/material.dart';
import '../constants.dart';

class CalculateBotton extends StatelessWidget {
  CalculateBotton({@required this.onTap, @required this.bottonTitle});
  final VoidCallback? onTap;
  final String? bottonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottonTitle!,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
