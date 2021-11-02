import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/application/login/login_controller.dart';
import 'package:flutter_ecommerces/injection.dart';
import 'package:flutter_ecommerces/presentation/core/appbars.dart';
import 'package:flutter_ecommerces/presentation/core/buttons.dart';
import 'package:flutter_ecommerces/presentation/core/utils.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final LoginController loginController = Get.put(getIt<LoginController>());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBars.appBars(title: "Masuk"),
        body: SafeArea(
            child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(flex: 3, child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child:
                      Image.asset(Utils.LOGO, fit: BoxFit.fitWidth, width: 180),
                ),
                TextFormField(
                  initialValue: "mor_2314",
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.4),
                      hintText: "Username",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person)),
                  onChanged: (value) =>
                      loginController.onUsernameChanged(value),
                  validator: (_) => loginController.getUsername.value.fold(
                      (l) => l.maybeMap(
                          empty: (_) => "Username Anda kosong",
                          invalidEmail: (_) => "Username Anda tidak valid",
                          orElse: () => null),
                      (r) => null),
                ),
                TextFormField(
                  initialValue: "83r5^_",
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.4),
                      hintText: "Password",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock)),
                  onChanged: (value) =>
                      loginController.onPasswordChanged(value),
                  validator: (_) => loginController.getPassword.value.fold(
                      (l) => l.maybeMap(
                          empty: (_) => "Password Anda kosong",
                          invalidEmail: (_) => "Password Anda tidak valid",
                          orElse: () => null),
                      (r) => null),
                ),
                Expanded(flex: 1, child: SizedBox()),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Buttons(
                    requiredIcon: false,
                    text: "Login",
                    onPressed: () {
                      if (loginController.isValid.value == true) {
                        loginController.onLogin();
                      }
                    },
                  ),
                ),
                Expanded(flex: 6, child: SizedBox()),
              ],
            ),
          ),
        )));
  }
}
