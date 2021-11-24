import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:to_do/localization/delegate.dart';
import 'package:to_do/widgets/home_page.dart';
import 'package:to_do/widgets/tabs/tabs_home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        R.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: R.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabsHomePage(),
    );
  }
}
