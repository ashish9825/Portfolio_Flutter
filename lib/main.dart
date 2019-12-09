import 'package:flutter/material.dart';
import 'package:portfolio/profile_page.dart';
import 'package:portfolio/about_page.dart';

void main() => runApp(PortfolioApp());

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "ProductSansRegular",
      ),
      initialRoute: ProfilePage.id,
      routes: {
        ProfilePage.id: (context) => ProfilePage(),
        AboutPage.id: (context) => AboutPage()
      },
    );
  }
}
