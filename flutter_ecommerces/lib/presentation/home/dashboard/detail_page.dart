import 'package:flutter/material.dart';
import 'package:flutter_ecommerces/domain/view_data/model/view_model.dart';
import 'package:flutter_ecommerces/presentation/core/colours.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final ViewModel viewModel;
  DetailPage({Key? key, required this.viewModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(viewModel.title!),
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
