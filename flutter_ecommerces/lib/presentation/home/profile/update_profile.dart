import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UpdateProfile extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Profile"),
        centerTitle: true,
      ),
      body : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Update Profile")
          ],
        ),
      )
    );
  }

}