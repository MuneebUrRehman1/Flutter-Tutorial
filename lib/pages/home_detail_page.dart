import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/themes.dart';


class HomeDetailsPage extends StatelessWidget
{
  final Item catalog;

  HomeDetailsPage(this.catalog);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          buttonPadding: EdgeInsets.symmetric(horizontal: 24),
          alignment: MainAxisAlignment.spaceBetween ,
          children: [
            Text("\$${catalog.price}".toString(), style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24

            ),),

            ElevatedButton(
              style: ButtonStyle(
                minimumSize:MaterialStateProperty.all(Size(100, 40))
              ),
                onPressed: () {

                },
                child: Text("Buy"))
          ],
        ),
      ),
      backgroundColor: MyTheme.creamColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24),
            child: Hero(
                tag: Key(catalog.id.toString()),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.4,
                    child: Image.network(catalog.imgUrl))),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(MediaQuery.of(context).size.width, 50)
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(catalog.name, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.deepOrange
                  ),),
                  Text(catalog.desc),
                ],
              ),
            ),

          )
        ],
      ),
    );
  }
  
}