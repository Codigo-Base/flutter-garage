import 'package:flutter/material.dart';
import 'package:flutter_garage/l10n/generated/l10n.dart';
import 'package:flutter_garage/ui/apperror/app_error_page.dart';
import 'package:flutter_garage/ui/columnlayout/column_layout_page.dart';
import 'package:flutter_garage/ui/gestures/gestures_page.dart';
import 'package:flutter_garage/ui/hidekeyboard/hide_keyboard_page.dart';
import 'package:flutter_garage/ui/intl/intl_page.dart';
import 'package:flutter_garage/ui/uxform/ux_form_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Color(0xFF181D45);
    final accentColor = Color(0xFFB13CDD);

    final theme = Theme.of(context);
    final baseTextStyle = theme.textTheme;
    final textStyle = baseTextStyle
        .copyWith(headline6: baseTextStyle.headline6?.copyWith(fontSize: 26))
        .apply(
          bodyColor: accentColor,
          displayColor: accentColor,
        );

    return MaterialApp(
      title: 'Flutter Garage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSwatch(
          accentColor: accentColor,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          toolbarTextStyle: textStyle.headline6,
          titleTextStyle: textStyle.headline6,
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          hintStyle: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w400,
              fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: GesturesPage(),
    );
  }
}
