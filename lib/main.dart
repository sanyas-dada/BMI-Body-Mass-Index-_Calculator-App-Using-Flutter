import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';
void main() => runApp(const BMICalculator());


class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner,
      // if we wanna change the default  color of the app, like appbar, button,floating actionbutton
      // this can be used in entire app not a specific components but if you only want to change teh color
      // of a specific app bar and not the entire app, you can set the color directly in the 'AppBar' widget.
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.redAccent,
          titleTextStyle: TextStyle(
            color:Colors.white, // change the title of color
            fontSize: 20, // change the font of the title
          ),
          centerTitle: true, // center the title
        ),
        scaffoldBackgroundColor:Colors.brown, // set the scaffold background color for the entire app
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.blue,
          shape: CircleBorder(),
          elevation: 10,
        ),
       /* textTheme: const TextTheme(
          bodyLarge :TextStyle(color: Colors.teal),
          bodyMedium: TextStyle(color:Colors.black),
        ),*/

      ),
     home: const InputPage()
    );
  }
}


