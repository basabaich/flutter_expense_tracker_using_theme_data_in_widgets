//
//File: main.dart
//
import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

//###################### SETTING UP GLOBAL COLOR SCHEME #########
//Setting up global color scheme (using 'k' as an indicator for global
//variables)
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 51, 181),
); //ColorScheme.fromSeed
//###################### SETTING UP GLOBAL COLOR SCHEME #########
//
//
//
void main() {
  runApp(const MyApp()); //Always use "MyApp" as otherwise it's not working.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //This line has to be added in "StatelesWidget()"

//
//
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //##########  THEME IS DEFINED HERE AS DEFAULT   #################
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        //Using Card themeing process here with global variable
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.background,
          elevation: 4,
          shadowColor: kColorScheme.onSurface,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ), //EdgeInsets.Symmetric
        ),
        //Using elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ), //ElevatedButtonThemeData
        //Text theme parameter setting
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 14), //TextStyle
            ),
      ),
      //##########  THEME IS DEFINED HERE AS DEFAULT   #################
      home: const Expenses(), //We are calling the class / method "Expensees()"
    ); //MaterialApp
  }
}
