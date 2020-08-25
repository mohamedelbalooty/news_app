import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/screens/splash_screen.dart';
import 'screens/appleCompany_screen.dart';
import 'screens/business_screen.dart';
import 'screens/home_screen.dart';
import 'screens/journal_screen.dart';
import 'screens/newsDetails_screen.dart';
import 'screens/technology_screen.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News',
      theme: ThemeData(
        primaryColor: Colors.blue.shade800,
        fontFamily: 'BalooTamma2',
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        BusinessScreen.id: (context) => BusinessScreen(),
        AppleCompanyScreen.id: (context) => AppleCompanyScreen(),
        TechnologyScreen.id: (context) => TechnologyScreen(),
        JournalScreen.id: (context) => JournalScreen(),
        NewsDetailsScreen.id: (context) => NewsDetailsScreen(),
      },
    );
  }
}
