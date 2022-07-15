// Reference: https://github.com/retroportalstudio/rps_ui_collection/tree/main/rps_ui_e2
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_design_2/screens/homePage.dart';
import 'package:ui_design_2/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Change app bar color
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: COLOR_GREEN),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: defaultText,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
