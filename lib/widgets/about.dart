import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'About',
                textScaleFactor: 4,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Me',
                textScaleFactor: 4,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: primaryColor,
                ),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'CSE Undergrad',
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              Text(
                'Rungta College Of Engineeriing & Technology, Bhilai',
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              _buildSkills(context),
            ],
          )
        ],
      ),
      smallScreen: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'About',
                textScaleFactor: 4,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Me',
                textScaleFactor: 4,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: primaryColor,
                ),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'CSE Undergrad',
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              Text(
                'Rungta College Of Engineeriing & Technology, Bhilai',
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              _buildSkills(context),
            ],
          )
        ],
      ),
    );
  }

  // Skill Methods
  final skills = [
    'Java',
    'Kotlin',
    'Android',
    'Dart',
    'Flutter',
    'Photoshop',
    'SQL',
    'Firebase'
  ];

  Widget _buildSkills(BuildContext context) {
    final List<Widget> widgets = skills
        .map((skill) => Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: _buildSkillChip(context, skill),
            ))
        .toList();

    return ResponsiveWidget(
      largeScreen: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Wrap(
            children: widgets,
          )
        ],
      ),
      smallScreen: Column(
        children: <Widget>[
          Wrap(
            children: widgets,
          )
        ],
      ),
    );
  }

  Widget _buildSkillChip(BuildContext context, String label) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: ResponsiveWidget.isSmallScreen(context) ? 13.0 : 14.0,
        ),
      ),
    );
  }
}
