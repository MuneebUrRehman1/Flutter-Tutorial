import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ItemWidget extends StatelessWidget
{
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      shape:  StadiumBorder(),
      child: ListTile(
        onTap: () {
          print(Text("Welcome Everyone"));
        },
        leading: Image.asset(item.imgUrl),
        title: Text(item.name ),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold,

        ),),
      ),
    );
  }
    
}