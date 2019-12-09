import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {@required this.text,
      @required this.onPressed,
      this.color = primaryColor});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}
