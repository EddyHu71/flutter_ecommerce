
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ecommerces/presentation/core/utils.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body : Container(child : Center(child: Image.asset(Utils.LOGO)))
    );
  }
}