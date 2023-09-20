import 'package:flutter/material.dart';
import 'package:untitled3/ProductWidget.dart';
import 'package:untitled3/Shop%20Data.dart';
import 'package:untitled3/shopModel.dart';

class gridwidget extends StatelessWidget {
  String type;

  gridwidget(this.type);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: pro.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          Product product = pro.where((element) => (element.type) == type ).toList()[index];

          return ProductWidget(product);
        });
  }
}
