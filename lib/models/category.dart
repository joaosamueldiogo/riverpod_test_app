class Category {
  String name;
  String imageUrl;

  Category({required this.name, required this.imageUrl});

  static List<Category> getCategories() {
    List<Category> categories = [];

    categories.add(
      Category(
        name: "Italian",
        imageUrl:
            "https://images.pexels.com/photos/30504705/pexels-photo-30504705.jpeg",
      ),
    );
    categories.add(
      Category(
        name: "Portuguese",
        imageUrl:
            "https://images.pexels.com/photos/15157808/pexels-photo-15157808.jpeg",
      ),
    );
    categories.add(
      Category(
        name: "Japanese",
        imageUrl:
            "https://images.pexels.com/photos/14469273/pexels-photo-14469273.jpeg",
      ),
    );
    categories.add(
      Category(
        name: "Mexican",
        imageUrl:
            "https://images.pexels.com/photos/27590338/pexels-photo-27590338.jpeg",
      ),
    );
    categories.add(
      Category(
        name: "Indian",
        imageUrl:
            "https://images.pexels.com/photos/24206915/pexels-photo-24206915.jpeg",
      ),
    );
    categories.add(
      Category(
        name: "French",
        imageUrl:
            "https://images.pexels.com/photos/7627422/pexels-photo-7627422.jpeg",
      ),
    );

    return categories;
  }
}
