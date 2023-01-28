import 'package:flutter/material.dart';
import 'package:multimedia/view/pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: Home_Page(),
    ),
  );
}
