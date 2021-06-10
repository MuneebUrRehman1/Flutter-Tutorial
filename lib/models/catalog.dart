class CatalogModel
{
   static List<Item> items=[];
}


class Item
{
    final num id;
    final String name;
    final String desc;
    final num price;
    final String color;
    final String imgUrl;

    Item(this.id, this.name, this.desc, this.price, this.color, this.imgUrl);

    factory Item.fromMap(Map<String, dynamic> map) {
      return Item(
         map['id'],
         map['name'],
         map['desc'],
         map['price'],
         map['color'],
         map['image'],
      );
    }

    Map<String, dynamic> toMap() {
      return {
        'id': id,
        'name': name,
        'desc': desc,
        'price': price,
        'color': color,
        'image': imgUrl,
      };
    }
}