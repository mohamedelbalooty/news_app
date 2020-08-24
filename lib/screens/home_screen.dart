import 'package:flutter/material.dart';
import 'package:news/widgets/custom_HomeAppBar.dart';
import 'package:news/widgets/custom_categoryCard.dart';
import '../constants.dart';
import 'appleCompany_screen.dart';
import 'business_screen.dart';
import 'journal_screen.dart';
import 'technology_screen.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [KMainColor, KSecondColor],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: height > 360.0 ? height * 0.06 : height * 0.1,
              ),
              customHomeAppBar(),
              customCategoryCard(
                  height,
                  width,
                  'assets/images/icons/business.png',
                  'Business',
                  'Top business headlines in the US.',
                  context,
                  BusinessScreen.id),
              customCategoryCard(
                  height,
                  width,
                  'assets/images/icons/company.png',
                  'Apple Company',
                  'All articles mentioning Apple from yesterday.',
                  context,
                  AppleCompanyScreen.id),
              customCategoryCard(
                  height,
                  width,
                  'assets/images/icons/tech.png',
                  'Technology',
                  'Top headlines from TechCrunch.',
                  context,
                  TechnologyScreen.id),
              customCategoryCard(
                  height,
                  width,
                  'assets/images/icons/journal.png',
                  'Wall Street Journal',
                  'All articles published by the Wall Street Journal in the last 6 months.',
                  context,
                  JournalScreen.id),
            ],
          ),
        ),
      ),
    );
  }
}
