import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/application/auth/auth_controller.dart';
import 'package:flutter_ecommerces/domain/core/i_storage.dart';
import 'package:flutter_ecommerces/injection.dart';
import 'package:flutter_ecommerces/presentation/core/utils.dart';
import 'package:flutter_ecommerces/presentation/routers/routers.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class SplashScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(getIt<AuthController>());
    // TODO: implement build
    return Scaffold(
        body: Container(child: Center(child: Image.asset(Utils.LOGO))));
  }
}
