import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/infrastructure/profile/profile_response/profile_model.dart';
import 'package:flutter_ecommerces/presentation/core/appbars.dart';
import 'package:flutter_ecommerces/presentation/core/buttons.dart';
import 'package:flutter_ecommerces/presentation/core/utils.dart';
import 'package:flutter_ecommerces/presentation/home/profile/update_profile.dart';
import 'package:get/get.dart';

class DetailProfile extends StatelessWidget {
  final ProfileModel profileModel;
  DetailProfile({
    required this.profileModel,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBars.appBars(title: "Detail Profile"),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Container(
                  width: 225,
                  height: 225,
                  child: Image.asset(Utils.PROFILE_PHOTO, fit: BoxFit.fitWidth),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    // bottom: 8.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                          profileModel.name!.firstname!.capitalizeFirst ??
                              'Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24.0)),
                      Text(" "),
                      Text(
                          profileModel.name!.lastname!.capitalizeFirst ??
                              'Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24.0)),
                    ],
                  )),
              Text(profileModel.username ?? 'Username',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child:
                    Text(profileModel.email!, style: TextStyle(fontSize: 14.0)),
              ),
              Expanded(child: SizedBox()),
              Buttons(
                  onPressed: () {
                    Get.to(UpdateProfile(profileData: profileModel));
                  },
                  text: "EDIT")
            ],
          ),
        ));
  }
}
