import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/drawer.dart';
import 'package:flutter_app/widgets/item_widget.dart';

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
    appBar: AppBar(
    //  backgroundColor: Colors.deepOrange,
      title: Text("My First App"),
    ),
     body: Padding(
       padding: const EdgeInsets.all(16.0),
       child: GridView.builder(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
             mainAxisSpacing: 15,
           crossAxisSpacing: 15
         ),
         itemBuilder: (context, index) {
           final item = CatalogModel.items[index];
           return
             Card(
               clipBehavior: Clip.antiAlias,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(16)
               ),
               child: GridTile(
                 header: Container(
                     child: Text(item.name, style: TextStyle(
                       color: Colors.white,
                     ),),
                     padding: const EdgeInsets.all(12),
                     decoration: BoxDecoration(
                     color: Colors.deepOrange,
                 ),
                   ),
                   footer: Container(
                     child: Text(item.price.toString(), style: TextStyle(
                       color: Colors.white,
                     ),),
                     padding: const EdgeInsets.all(12),
                     decoration: BoxDecoration(
                       color: Colors.green,
                     ),
                   ),
                   child: Image.network(item.imgUrl)
               ),
             );
         },
         itemCount: CatalogModel.items.length,)
     ),
    drawer: MyDrawer(),
  );

  }
}