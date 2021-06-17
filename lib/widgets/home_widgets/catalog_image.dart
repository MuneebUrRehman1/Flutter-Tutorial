

import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/themes.dart';

class CatalogImage extends StatelessWidget
{
  final String image;

  CatalogImage(this.image);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return  Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Container(
          width: MediaQuery.of(context).size.width*0.4,
          padding: EdgeInsets.all(8),
          color: MyTheme.creamColor ,
          child: Image.network(image)),
    );
  }

}