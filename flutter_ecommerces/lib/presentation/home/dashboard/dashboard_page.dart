import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/presentation/core/colours.dart';
import 'package:flutter_ecommerces/presentation/core/utils.dart';
import 'package:flutter_ecommerces/presentation/home/dashboard/detail_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class DashboardPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Get.to(DetailPage());
          },
          child : Card(
          elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)),
          child : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment : MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color : Colours.shimmerColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    )
                  ),
                  width : Get.width,
                  height : 225,
                ),
                Padding(
                  padding: const EdgeInsets.only(left : 12.0, top : 8.0, bottom : 8.0),
                  child: Text("Judul", style : TextStyle(fontWeight: FontWeight.bold, fontSize : 14.0)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left : 12.0),
                  child: Text("Deskripsi", maxLines: 1, overflow: TextOverflow.ellipsis,),
                ),
              ],
            ),
          )
        )
        );
    }, 
    separatorBuilder: (BuildContext context, int index) {
      return Container(
        margin : const EdgeInsets.only(top : 4.0, bottom : 4.0),
        // color : Colors.grey.withOpacity(0.3),
        width : Get.width,
        height : 2,
        );
    }, itemCount: 10));
  }

}