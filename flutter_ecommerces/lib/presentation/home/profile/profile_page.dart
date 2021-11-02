import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/presentation/core/alerts.dart';
import 'package:flutter_ecommerces/presentation/core/colours.dart';
import 'package:flutter_ecommerces/presentation/home/profile/detail_profile.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class ProfilePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width : 225,
            height : 225,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colours.shimmerColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top : 8.0, bottom : 8.0,),
            child: Text("Nama", style : TextStyle(fontWeight: FontWeight.bold, fontSize : 24.0)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom : 16.0),
            child: Text("Email", style : TextStyle(fontSize : 14.0)),
          ),
          Card(child : Column(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profil"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.to(DetailProfile());
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title : Text("Keluar"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Alerts.logoutAlert(
                    title: "Logout",
                    subTitle: "Apakah kamu ingin keluar?",
                    withCancel: true,
                    onPressed: () {

                    }, onCancelPressed: () {
                      Get.back();
                    }, context: context);
                },
              )
            ],))
        ],
      ),
    ));
  }

}