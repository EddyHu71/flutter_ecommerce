import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/presentation/core/buttons.dart';
import 'package:flutter_ecommerces/presentation/core/utils.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 6, child: SizedBox()),
          Image.asset(Utils.LOGO, fit: BoxFit.fitWidth, width: 225),
          Expanded(flex: 4, child: SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Buttons(
              text: "Next",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
