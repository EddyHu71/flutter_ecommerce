
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ecommerces/presentation/core/utils.dart';
import 'package:flutter_ecommerces/presentation/onboard/onboard.dart';
import 'package:flutter_ecommerces/presentation/routers/routers.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class SplashScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Timer(Duration(seconds: 3), () async {
        var cek = false;
        if (cek == true) {
          Get.offNamed(Routers.home);
        } else {
          Get.offNamed(Routers.onboard);
        }
      });
    });
    // TODO: implement build
    return Scaffold(
      body : Container(child : Center(child: Image.asset(Utils.LOGO)))
    );
  }
}