import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modules/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark,
              statusBarColor: Colors.black),
        ),
        fontFamily: 'Dancing',
      ),
    );
  }
}
