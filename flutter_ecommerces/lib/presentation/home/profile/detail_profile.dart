import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/presentation/core/colours.dart';
import 'package:flutter_ecommerces/presentation/home/profile/update_profile.dart';
import 'package:get/get.dart';

class DetailProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Get.to(UpdateProfile());
          }, icon: Icon(Icons.edit))
        ],
      ),
      body : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: Container(
                width : 225,
                height : 225,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colours.shimmerColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top : 8.0, bottom : 8.0,),
              child: Text("Nama", style : TextStyle(fontWeight: FontWeight.bold, fontSize : 24.0)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom : 8.0,),
              child: Text("Username", style : TextStyle(fontWeight: FontWeight.bold, fontSize : 16.0)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom : 8.0),
              child: Text("Email", style : TextStyle(fontSize : 14.0)),
            ),
        ],),
      )
    );
  }

}