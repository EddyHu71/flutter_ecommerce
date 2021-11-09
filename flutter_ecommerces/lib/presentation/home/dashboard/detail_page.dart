import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/domain/view_data/model/view_model.dart';
import 'package:flutter_ecommerces/presentation/core/appbars.dart';
import 'package:flutter_ecommerces/presentation/core/colours.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final ViewModel viewModel;
  DetailPage({Key? key, required this.viewModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBars.appBars(title: "Detail Profile"),
        body: Column(
          children: [
            Container(
              child : Image.network(viewModel.image!),
              width: Get.width,
              height: Get.height * 0.33,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
              child: Text(viewModel.title!,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                viewModel.description!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ));
  }
}
