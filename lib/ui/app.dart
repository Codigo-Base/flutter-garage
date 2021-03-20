
import 'package:flutter/material.dart';
import 'package:flutter_garage/ui/hidekeyboard/hide_keyboard_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final primaryColor = Color(0xFF181D45);
    final accentColor = Color(0xFFB13CDD);

    return MaterialApp(
      title: 'Flutter Garage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: accentColor,
        appBarTheme: AppBarTheme(
          textTheme: Theme.of(context).textTheme.copyWith(
            headline6: Theme.of(context).textTheme.headline6!.copyWith(
              color: accentColor,
              fontSize: 24
            )
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          hintStyle: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HideKeyboardPage(),
    );
  }
}