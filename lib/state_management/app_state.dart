class AppState {
  String name;
  List<String> categoriesSeen = [];

  AppState({this.name = "", this.categoriesSeen = const []});

  AppState copyWith({List<String>? categoriesSeen}) {
    return AppState(
      categoriesSeen: categoriesSeen ?? this.categoriesSeen,
      name: name,
    );
  }

  bool hasSeenCategory(String categoryName) {
    return categoriesSeen.contains(categoryName);
  }
}
