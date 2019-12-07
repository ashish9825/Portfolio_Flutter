import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_button.dart';
import 'package:portfolio/widgets/nav_header.dart';
import 'package:portfolio/widgets/profile_infor.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  padding: const EdgeInsets.all(20.0),
                  children: <Widget>[
                    NavButton(
                      text: 'about',
                      onPressed: () {},
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
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  ProfileInfo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  //SocialInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
