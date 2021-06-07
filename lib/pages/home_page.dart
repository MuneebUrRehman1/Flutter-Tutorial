import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/drawer.dart';
import 'package:flutter_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final dummyList= List.generate(50, (index) => CatalogModel.items[0]);
  return Scaffold(
    appBar: AppBar(
    //  backgroundColor: Colors.deepOrange,
      title: Text("My First App"),
    ),
     body: Padding(
       padding: const EdgeInsets.all(16.0),
       child: ListView.builder(
           itemCount: dummyList.length,
         itemBuilder: (context, index) {
           return ItemWidget(item: dummyList[index],);
         },
       ),
     ),
    drawer: MyDrawer(),
  );

  }
  
}