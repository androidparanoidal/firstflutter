import 'package:flutter/material.dart';

class RoundIconBotton extends StatelessWidget {
  RoundIconBotton({@required this.icon, @required this.onClicked});
  final IconData? icon;
  final VoidCallback? onClicked;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: Colors.white),
      onPressed: onClicked,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
