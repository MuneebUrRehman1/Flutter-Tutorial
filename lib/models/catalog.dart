class CatalogModel
{
   static final items=[
       Item(1, "Realme", "My Phone", 999, "33505a", "assets/images/profile.png")
   ];
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
}