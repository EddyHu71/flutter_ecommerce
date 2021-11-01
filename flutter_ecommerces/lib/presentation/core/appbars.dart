import 'package:flutter/material.dart';

class AppBars {
  static AppBar appBars({
    required String title
  }) => AppBar(
    elevation : 0,
    title: Text(title, style : TextStyle(color : Colors.black)),
    centerTitle: true,
    backgroundColor: Colors.white,
  );
}