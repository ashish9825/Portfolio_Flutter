import 'package:flutter/material.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'package:portfolio/constants.dart';

class ProfileInfo extends StatelessWidget {
  profileImage(context) => AnimatedContainer(
        duration: Duration(seconds: 1),
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("images/ashish.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
  // mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Hi there ! My name is",
        textScaleFactor: 2,
        style: TextStyle(color: primaryColor),
      ),
      Text(
        "Ashish\nPanjwani",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        "A enthusiast mobile developer specialized in Android & Flutter.\n"
        "I am a Freelance Developer in Mobile App Development (Android & Flutter).",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.grey),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: Text(
              'Resume',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: raisedButtonColor,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
          OutlineButton(
            borderSide: BorderSide(
              color: raisedButtonColor,
              width: 4.0,
            ),
            shape: StadiumBorder(),
            child: Text('Say Hi !'),
            color: Colors.red,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          )
        ],
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          Expanded(child: profileData),
        ],
      ),
      
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData,
        ],
      ),
    );
  }
}
