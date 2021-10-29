import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/presentation/core/buttons.dart';
import 'package:flutter_ecommerces/presentation/core/utils.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body : SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex : 6,
                child : SizedBox()),
              Image.asset(Utils.LOGO, fit : BoxFit.fitWidth, width : 225),
              Container(
                child : Column(
                  mainAxisSize : MainAxisSize.min,
                  children  : [
                    Text("Welcome to Flutter E-Commerce", 
                      textAlign: TextAlign.center, 
                      style : TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                    Text("We provide anything that you want.", style : TextStyle(fontSize : 16))
                  ]
                )
              ),      
              Expanded(
                flex : 4,
                child: SizedBox()),
              Container(
                child : Column(
                  mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Buttons(
                      text: "Login",
                      onPressed: () {

                    },),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Buttons(
                      text: "Register",
                      onPressed: () {

                    },),
                  ),
                ],
              ))
            ],
          ),
        )
      )
    );
  }

}