import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test_app/state_management/app_state.dart';

class AppNotifier extends Notifier<AppState> {
  void setName(String newName) {
    state.name = newName;
  }

  void markCategoryAsSeen(String categoryName) {
    if (!state.hasSeenCategory(categoryName)) {
      state = state.copyWith(
        categoriesSeen: List.from(state.categoriesSeen)..add(categoryName),
      );
    }
  }

  void resetCategoriesSeen() {
    state = state.copyWith(categoriesSeen: []);
  }

  @override
  AppState build() {
    state = AppState();
    return state;
  }
}
