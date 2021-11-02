import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/presentation/core/colours.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Judul"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colours.shimmerColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  )),
              width: Get.width,
              height: 225,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
              child: Text("Judul",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Deskripsi",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ));
  }
}
