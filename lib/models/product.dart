class Product {
  String name;
  String imageUrl;
  double price;

  Product({required this.name, required this.imageUrl, required this.price});

  static List<Product> getProducts() {
    List<Product> products = [];

    products.add(
      Product(
        name: "Spaghetti Carbonara",
        imageUrl:
            "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg",
        price: 12.99,
      ),
    );
    products.add(
      Product(
        name: "Margherita Pizza",
        imageUrl:
            "https://images.pexels.com/photos/2619967/pexels-photo-2619967.jpeg",
        price: 10.49,
      ),
    );
    products.add(
      Product(
        name: "Tiramisu",
        imageUrl:
            "https://images.pexels.com/photos/3026801/pexels-photo-3026801.jpeg",
        price: 6.99,
      ),
    );

    return products;
  }
}
