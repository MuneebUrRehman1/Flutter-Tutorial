import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/Drawer.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.deepOrange,
      title: Text("My First App"),
    ),
     body: Center(
       child: Container(
         child: Text("Welcome"),
       ),
     ),
    drawer: MyDrawer(),
  );

  }
  
}