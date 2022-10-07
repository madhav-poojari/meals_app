import 'package:flutter/material.dart';
import 'package:meals_app/CategoriesSelect.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/aboutSection.dart';
import 'package:meals_app/mealselectscreen.dart';
import 'meal_screen.dart';

import './filters.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // textTheme: ,
        primaryTextTheme: TextTheme(),
        textTheme: GoogleFonts.oxygenTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.grey,
          secondary: Colors.green,
        ),
        canvasColor: Colors.white,
      ),
      home: CategoriesScreen(),
      routes: {
        // '/': (context) => CategoriesScreen(),
        
        mealScreen.routename: (context) => mealScreen(),
        mealSelectScreen.routename: (ctx) => mealSelectScreen(),
        filters.routename: (ctx) => filters(),
        aboutMe.routename: (context) => aboutMe()
      },
    );
  }
}
