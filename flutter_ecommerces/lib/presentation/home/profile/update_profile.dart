import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/application/profile/profile_controller.dart';
import 'package:flutter_ecommerces/injection.dart';
import 'package:flutter_ecommerces/model/profile_response/profile_model.dart';
import 'package:flutter_ecommerces/presentation/core/buttons.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class UpdateProfile extends HookWidget {
  final ProfileModel profileData;
  UpdateProfile({
      required this.profileData,
    });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ProfileController profileController = Get.put(getIt<ProfileController>());
    final firstName = useTextEditingController(text: profileData.name!.firstname!);
    final lastName = useTextEditingController(text : profileData.name!.lastname!);
    final username = useTextEditingController(text : profileData.username);
    final email = useTextEditingController(text : profileData.email!);
    final password = useTextEditingController(text: profileData.password);
    return Scaffold(
        appBar: AppBar(
          title: Text("Update Profile"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                child : Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child : TextFormField(
                        controller: firstName,
                        keyboardType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.4),
                            hintText: "First Name",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.person)),
                        onChanged: (value) =>
                            profileController.onfirstNameChanged(value),
                        validator: (_) => profileController.getFirstName.value.fold(
                            (l) => l.maybeMap(
                                empty: (_) => "Nama Pertama Anda kosong",
                                invalidName : (_) => "Nama Pertama Anda tidak valid",
                                orElse: () => null),
                            (r) => null),
                        ),
                    ),
                    Expanded(
                      child : TextFormField(
                        controller: lastName,
                        keyboardType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.4),
                            hintText: "Last Name",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.person)),
                        onChanged: (value) =>
                            profileController.onlastNameChanged(value),
                        validator: (_) => profileController.getLastName.value.fold(
                            (l) => l.maybeMap(
                                empty: (_) => "Nama Akhir Anda kosong",
                                invalidName : (_) => "Nama Akhir Anda tidak valid",
                                orElse: () => null),
                            (r) => null),
                        ),
                    ),
              ],)),
              TextFormField(
                controller: username,
                keyboardType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.4),
                    hintText: "Username",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person)),
                onChanged: (value) =>
                    profileController.onusernameChanged(value),
                validator: (_) => profileController.getUsername.value.fold(
                    (l) => l.maybeMap(
                        empty: (_) => "Username Anda kosong",
                        invalidUsername : (_) => "Username Anda tidak valid",
                        orElse: () => null),
                    (r) => null),
              ),
              TextFormField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.4),
                    hintText: "Email",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.mail)),
                onChanged: (value) =>
                    profileController.onemailChanged(value),
                validator: (_) => profileController.getEmail.value.fold(
                    (l) => l.maybeMap(
                        empty: (_) => "Email Anda kosong",
                        invalidEmail: (_) => "Email Anda tidak valid",
                        orElse: () => null),
                    (r) => null),
              ),
              TextFormField(
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.4),
                    hintText: "Password",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock)),
                onChanged: (value) =>
                    profileController.onpasswordChanged(value),
                validator: (_) => profileController.getPassword.value.fold(
                    (l) => l.maybeMap(
                        empty: (_) => "Password Anda kosong",
                        invalidPassword: (_) => "Password Anda tidak valid",
                        orElse: () => null),
                    (r) => null),
              ),
              Expanded(child: SizedBox(),),
              Buttons(
                splashBtnColor: Colors.blue.withOpacity(0.4),
                btnColors: Colors.blue,
                onPressed: () {

              }, text: "UPDATE")
            ],
          ),
        ));
  }
}
