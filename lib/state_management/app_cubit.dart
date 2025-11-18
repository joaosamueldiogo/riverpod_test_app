import 'package:bloc_test_app/state_management/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(name: ""));

  void setName(String name) {
    state.name = name;
    emit(state);
  }

  void markCategoryAsSeen(String categoryName) {
    if (!state.categoriesSeen.contains(categoryName)) {
      emit(
        state.copyWith(
          categoriesSeen: List.from(state.categoriesSeen)..add(categoryName),
        ),
      );
    }
  }

  bool hasSeenCategory(String categoryName) {
    return state.hasSeenCategory(categoryName);
  }
}
