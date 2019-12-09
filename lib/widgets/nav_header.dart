import 'package:flutter/material.dart';
import 'package:portfolio/about_page.dart';
import 'package:portfolio/widgets/logo.dart';
import 'package:portfolio/widgets/nav_button.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          APDot(),
          //Spacer(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: <Widget>[
                NavButton(
                  text: 'about',
                  onPressed: () {
                    Navigator.pushNamed(context, AboutPage.id);
                  },
                ),
                NavButton(
                  text: 'work',
                  onPressed: () {},
                ),
                NavButton(
                  text: 'contact',
                  onPressed: () {},
                )
              ],
            )
        ],
      ),
    );
  }
}
