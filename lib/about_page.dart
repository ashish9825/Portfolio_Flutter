import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'package:portfolio/constants.dart';
import 'widgets/about.dart';

class AboutPage extends StatefulWidget {
  static String id = '/about_screen';

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool _loadingScreen = true;
  final aboutText = Row(
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
  );

  @override
  void initState() {
    super.initState();
    _loadingScreen = false;
  }

  @override
  Widget build(BuildContext context) {
    if (_loadingScreen)
      return SpinKitChasingDots(
        color: Colors.red,
      );
    return Scaffold(
      body: Center(
        child: ResponsiveWidget(
          largeScreen: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              About(),
              AnimatedContainer(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/programmer.jpg"),
                      alignment: Alignment.center,
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          smallScreen: Column(
            mainAxisSize: MainAxisSize.min,
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.25
                    : MediaQuery.of(context).size.width * 0.25,
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/programmer.jpg"),
                      alignment: Alignment.center,
                      fit: BoxFit.cover),
                ),
              ),
              About(),
            ],
          ),
        ),
      ),
    );
  }
}
