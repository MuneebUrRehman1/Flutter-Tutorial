import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Catalog App", style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).accentColor,
            fontSize: 32
        ),),
        Text("Trending Products")
      ],
    );
  }

}