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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
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
                minimumSize:MaterialStateProperty.all(Size(100, 40)),
                backgroundColor: MaterialStateProperty.all(Theme.of(context).buttonColor)
              ),
                onPressed: () {

                },
                child: Text("Add to cart"))
          ],
        ),
      ),
      backgroundColor: Theme.of(context).cardColor,
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
                color: Theme.of(context).scaffoldBackgroundColor,
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
                  Text(catalog.desc,style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nisl eros, "
                      "pulvinar facilisis justo mollis, auctor consequat urna. Morbi a bibendum metus."
                    ,textAlign: TextAlign.justify,),
                  )
                ],
              ),
            ),

          )
        ],
      ),
    );
  }
  
}