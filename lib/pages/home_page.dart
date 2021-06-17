import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/utils/routes.dart';
import 'package:flutter_app/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_app/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_app/widgets/themes.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData()
  async {
    final catalogJson = await rootBundle.loadString("assets/files/products.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});

  }


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    //final dummyList= List.generate(50, (index) => CatalogModel.items[0]);
  return Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, MyRoutes.cartRoute);
      },
      backgroundColor: Colors.deepOrange,
      child: Icon(CupertinoIcons.cart,color: Colors.white,),
    ),

   // backgroundColor: MyTheme.darkCreamColor,
    body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
       // margin: EdgeInsets.fromLTRB(0, 0, 0,36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
            SizedBox(
              height: 10,
            ),
            CatalogList(),
          ],
        ),
      ),
    ),
  );
  }
}




