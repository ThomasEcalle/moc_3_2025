class Product {
  final String? name;
  final double? price;

  Product({
    this.name,
    this.price,
  });

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['title'],
      price: json['price'],
    );
  }
}
