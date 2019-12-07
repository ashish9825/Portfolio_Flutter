import 'package:flutter/material.dart';
import 'package:portfolio/profile_page.dart';

void main() => runApp(PortfolioApp());

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "ProductSansRegular",
      ),
      home: ProfilePage(),
    );
  }
}
