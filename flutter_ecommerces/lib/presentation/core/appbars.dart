import 'package:flutter/material.dart';

class AppBars {
  static AppBar appBars({
    required String title
  }) => AppBar(
    title: Text(title),
    centerTitle: true,
    backgroundColor: Colors.transparent,
  );
}