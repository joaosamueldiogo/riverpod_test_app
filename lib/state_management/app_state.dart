class AppState {
  String name;
  List<String> categoriesSeen = [];

  AppState({this.name = "User", this.categoriesSeen = const []});

  AppState copyWith({String? name, List<String>? categoriesSeen}) {
    return AppState(
      name: name ?? this.name,
      categoriesSeen: categoriesSeen ?? this.categoriesSeen,
    );
  }

  bool hasSeenCategory(String categoryName) {
    return categoriesSeen.contains(categoryName);
  }
}
