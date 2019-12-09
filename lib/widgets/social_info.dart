import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_button.dart';
import 'dart:html' as html;
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class SocialInfo extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      NavButton(
        text: 'Github',
        onPressed: () {
          html.window.open(GITHUB_PROFILE, 'Git');
        },
        color: Colors.blue,
      ),
      NavButton(
        text: 'Linkedin',
        onPressed: () {
          html.window.open(LINKEDIN_PROFILE, 'Linkedin');
        },
        color: Colors.blue,
      ),
      NavButton(
        text: 'Twitter',
        onPressed: () {
          html.window.open(TWITTER_PROFILE, 'Twitter');
        },
        color: Colors.blue,
      )
    ];
  }

  Widget copyRightText() => Text(
        'Ashish Panjwani ©2019',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
          copyRightText(),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ...socialMediaWidgets(),
          copyRightText(),
        ],
      ),
    );
  }
}
