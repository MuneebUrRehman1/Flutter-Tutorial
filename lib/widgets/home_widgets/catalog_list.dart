
import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/pages/home_detail_page.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) => HomeDetailsPage(catalog),) ),
              child: CatalogItem(catalog)
          );
        },

      ),
    );
  }
}

class CatalogItem extends StatelessWidget
{
  final Item catalog;

  CatalogItem(this.catalog);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
        color: Colors.white,
        height: 180,
        child: Row(
          children: [
            Hero(
              tag:Key(catalog.id.toString()),
                child: CatalogImage(catalog.imgUrl)
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(catalog.name, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange
                  ),),

                  Text(catalog.desc),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween ,
                    children: [
                      Text("\$${catalog.price}".toString(), style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),),

                      ElevatedButton(
                          onPressed: () {

                          },
                          child: Text("Buy"))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}