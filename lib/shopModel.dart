enum types {all,man, women,children}

class Product{
  String name;
  String imageUrl;
  int price;
  types type;
  Product({required this.name, required this.imageUrl, required this.price, required this.type});
}