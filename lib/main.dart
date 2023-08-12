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
          )),
      //##########  THEME IS DEFINED HERE AS DEFAULT   #################
      home: const Expenses(), //We are calling the class / method "Expensees()"
    ); //MaterialApp
  }
}
