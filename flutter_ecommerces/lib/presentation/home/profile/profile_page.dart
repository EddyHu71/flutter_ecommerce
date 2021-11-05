import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/application/logout/logout_controller.dart';
import 'package:flutter_ecommerces/application/profile/profile_controller.dart';
import 'package:flutter_ecommerces/injection.dart';
import 'package:flutter_ecommerces/presentation/core/alerts.dart';
import 'package:flutter_ecommerces/presentation/core/utils.dart';
import 'package:flutter_ecommerces/presentation/home/profile/detail_profile.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final ProfileController profileController =
        Get.put(getIt<ProfileController>());
    final LogoutController logoutController = Get.put(getIt<LogoutController>());
    profileController.optionFailOrSuccess.listen((option) {
      option.match(
          (t) => t.fold((l) {
                print("Left");
                return Center(child: Text("No Data"));
              }, (r) {
                print("Right");
              }),
          () => Center(child: CircularProgressIndicator()));
    });

    return SafeArea(
      child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                width: Get.width * 0.35,
                height: Get.width * 0.35,
                child: Image.asset(Utils.PROFILE_PHOTO, fit: BoxFit.fitWidth),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  // bottom: 8.0,
                ),
                child: Text.rich(TextSpan(
                    text: profileController.profileData.value.name?.firstname!
                            .capitalizeFirst ??
                        "First",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    children: <InlineSpan>[
                      TextSpan(text: " "),
                      TextSpan(
                        text: profileController.profileData.value.name?.lastname ??
                            "Last",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ])),
              ),
              Text(profileController.profileData.value.username ?? "Username",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                    profileController.profileData.value.email ?? "Email",
                    style: TextStyle(fontSize: 14.0)),
              ),
              Card(
                  child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profil"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Get.to(DetailProfile(
                        profileModel: profileController.profileData.value,
                      ));
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
                          onPressed: () {
                            logoutController.onLogout();
                          },
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
  }
}
