import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/application/register/register_controller.dart';
import 'package:flutter_ecommerces/injection.dart';
import 'package:flutter_ecommerces/presentation/core/appbars.dart';
import 'package:flutter_ecommerces/presentation/core/buttons.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final RegisterController registerController =
      Get.put(getIt<RegisterController>());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBars.appBars(title: "Registrasi"),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child : Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              Expanded(flex: 3, child: SizedBox()),
              TextFormField(
                initialValue: "johnd",
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.4),
                    hintText: "Username",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person)),
                onChanged: (value) => registerController.onUsernameChanged(value),
                validator: (_) => registerController.getUsername.value.fold(
                    (l) => l.maybeMap(
                        empty: (_) => "Username Anda kosong",
                        invalidUsername: (_) => "Username Anda tidak valid",
                        orElse: () => null),
                    (r) => null),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                initialValue: "John Doe",
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.4),
                    hintText: "Name",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person)),
                onChanged: (value) => registerController.onNameChanged(value),
                validator: (_) => registerController.getName.value.fold(
                    (l) => l.maybeMap(
                        empty: (_) => "Nama Anda kosong",
                        invalidName: (_) => "Nama Anda tidak valid",
                        orElse: () => null),
                    (r) => null),
              ),
              TextFormField(
                initialValue: "John@gmail.com",
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.4),
                    hintText: "Email",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.mail)),
                onChanged: (value) => registerController.onEmailChanged(value),
                validator: (_) => registerController.getEmail.value.fold(
                    (l) => l.maybeMap(
                        empty: (_) => "Email Anda kosong",
                        invalidEmail: (_) => "Email Anda tidak valid",
                        orElse: () => null),
                    (r) => null),
              ),
              TextFormField(
                initialValue: "m38rmF",
                keyboardType: TextInputType.text,
                // obscureText: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.4),
                    hintText: "Password",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock)),
                onChanged: (value) => registerController.onPasswordChanged(value),
                validator: (_) => registerController.getPassword.value.fold(
                    (l) => l.maybeMap(
                        empty: (_) => "Password Anda kosong",
                        invalidPassword: (_) => "Password Anda tidak valid",
                        orElse: () => null),
                    (r) => null),
              ),
              // TextFormField(
              //   initialValue: "m38rmF",
              //   keyboardType: TextInputType.text,
              //   // obscureText: true,
              //   autovalidateMode: AutovalidateMode.onUserInteraction,
              //   decoration: InputDecoration(
              //       fillColor: Colors.grey.withOpacity(0.4),
              //       hintText: "Konfirmasi Password",
              //       border: InputBorder.none,
              //       prefixIcon: Icon(Icons.lock)),
              //   onChanged: (value) =>
              //       registerController.onConfirmPasswordChanged(value),
              //   validator: (_) => registerController.getConfirmPassword.value.fold(
              //       (l) => l.maybeMap(
              //           empty: (_) => "Konfirmasi Password Anda kosong",
              //           invalidConfirmPassword: (_) => "Konfirmasi Password tidak valid",
              //           orElse: () => null),
              //       (r) => null),
              // ),
              Expanded(flex: 7, child: SizedBox()),
              Buttons(
                  requiredIcon: false,
                  text: "Register",
                  onPressed: () {
                    // print("Register executed");
                    // registerController.onRegister();
                    // print("Valid value");
                    // print(registerController.isValid.value);
                    if (registerController.isValid.value == true) {
                      print("Register executed");
                      registerController.onRegister();
                    }
                  }
                )
          ],
        )),
            )));
  }
}
