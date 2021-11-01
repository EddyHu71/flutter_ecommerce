import 'package:flutter/material.dart';

class AppBars {
  static AppBar appBars({
    required String title
  }) => AppBar(
    elevation : 0,
    title: Text(title, style : TextStyle(color : Colors.black)),
    centerTitle: true,
    iconTheme: IconThemeData(
      color : Colors.black
    ),
    backgroundColor: Colors.white,
  );
}