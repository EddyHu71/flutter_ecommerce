import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/application/profile/profile_controller.dart';
import 'package:flutter_ecommerces/injection.dart';
import 'package:flutter_ecommerces/presentation/core/alerts.dart';
import 'package:flutter_ecommerces/presentation/core/colours.dart';
import 'package:flutter_ecommerces/presentation/core/utils.dart';
import 'package:flutter_ecommerces/presentation/home/profile/detail_profile.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ProfileController profileController =
        Get.put(getIt<ProfileController>());
    retWidget() {
      profileController.optionFailOrSuccess.listen((option) {
        option.match(
            (t) => t.fold((l) {
                  print("Left");
                  return Center(child: Text("No Data"));
                }, (r) {
                  print("Right");
                }),
            () => null);
      });
    }

    return SafeArea(
      child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                  width: 225,
                  height: 225,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colours.shimmerColor,
                  ),
                  child : Image.asset(Utils.PROFILE_PHOTO, fit : BoxFit.fitWidth),
                ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  // bottom: 8.0,
                ),
                child: Text(profileController.profileData.value.name!.firstname!.toString(),
                    // profileController.profileData.value.name!.firstname!.capitalize.toString() + " " +profileController.profileData.value.name!.lastname!.capitalize.toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(profileController.profileData.value.email!, style: TextStyle(fontSize: 14.0)),
              ),
            Card(
              child: Column(
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
                title: Text("Keluar"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Alerts.logoutAlert(
                      title: "Logout",
                      subTitle: "Apakah kamu ingin keluar?",
                      withCancel: true,
                      onPressed: () {},
                      onCancelPressed: () {
                        Get.back();
                      },
                      context: context);
                },
              )
            ],
          ))
            ],
          )),
    );
    // return SafeArea(
    //     child: Padding(
    //   padding: const EdgeInsets.all(16.0),
    //   child: Column(
    //     mainAxisSize: MainAxisSize.max,
    //     children: [
    //       Container(
    //         width: 225,
    //         height: 225,
    //         decoration: BoxDecoration(
    //           shape: BoxShape.circle,
    //           color: Colours.shimmerColor,
    //         ),
    //       ),
    //       // Text(profileController.profileData.toJson().toString() ),
    //       Padding(
    //         padding: const EdgeInsets.only(
    //           top: 8.0,
    //           bottom: 8.0,
    //         ),
    //         child: Text(listData.name!.firstname! + " " + listData.name!.lastname!,
    //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(bottom: 16.0),
    //         child: Text(listData.email!, style: TextStyle(fontSize: 14.0)),
    //       ),
    //       Text(profileController.profileData!.email),
    //       Card(
    //           child: Column(
    //         children: [
    //           ListTile(
    //             leading: Icon(Icons.person),
    //             title: Text("Profil"),
    //             trailing: Icon(Icons.arrow_forward_ios),
    //             onTap: () {
    //               Get.to(DetailProfile());
    //             },
    //           ),
    //           ListTile(
    //             leading: Icon(Icons.exit_to_app),
    //             title: Text("Keluar"),
    //             trailing: Icon(Icons.arrow_forward_ios),
    //             onTap: () {
    //               Alerts.logoutAlert(
    //                   title: "Logout",
    //                   subTitle: "Apakah kamu ingin keluar?",
    //                   withCancel: true,
    //                   onPressed: () {},
    //                   onCancelPressed: () {
    //                     Get.back();
    //                   },
    //                   context: context);
    //             },
    //           )
    //         ],
    //       ))
    //     ],
    //   ),
    // ));
  }
}
