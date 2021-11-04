import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/presentation/core/colours.dart';

class AppBars {
  static AppBar appBars({required String title}) => AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colours.buttonColor,
      );
}
