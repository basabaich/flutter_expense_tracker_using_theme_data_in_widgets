//
//File: main.dart
//
import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main() {
  runApp(const MyApp()); //Always use "MyApp" as otherwise it's not working.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //This line has to be added in "StatelesWidget()"

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //##########  THEME IS DEFINED HERE AS DEFAULT   #################
      theme: ThemeData().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromARGB(255, 250, 245, 196),
      ),
      //##########  THEME IS DEFINED HERE AS DEFAULT   #################
      home: const Expenses(), //We are calling the class / method "Expensees()"
    ); //MaterialApp
  }
}
