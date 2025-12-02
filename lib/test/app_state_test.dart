import 'package:riverpod_test_app/state_management/state_management.dart';
import 'package:test/test.dart';

void main() {
  group("AppState Tests", () {
    test("Initial AppState values", () {
      AppState state = AppState();

      expect(state.name, 'User');
      expect(state.categoriesSeen.isEmpty, true);
    });

    test("Initializing AppState with values", () {
      AppState state = AppState(
        name: 'TestUser',
        categoriesSeen: ['Category1', 'Category2'],
      );

      expect(state.name, 'TestUser');
      expect(state.categoriesSeen.length, 2);
      expect(state.hasSeenCategory('Category1'), true);
      expect(state.hasSeenCategory('Category2'), true);
      expect(state.hasSeenCategory('Category3'), false);
    });

    test("Has seen Category method", () {
      AppState state = AppState(categoriesSeen: ['CategoryA', 'CategoryB']);

      expect(state.hasSeenCategory('CategoryA'), true);
      expect(state.hasSeenCategory('CategoryB'), true);
      expect(state.hasSeenCategory('CategoryC'), false);
    });

    test("Copy With", () {
      AppState state = AppState(name: 'OriginalUser', categoriesSeen: ['Cat1']);

      AppState newState = state.copyWith(
        name: 'NewUser',
        categoriesSeen: ['Cat1', 'Cat2'],
      );

      expect(newState.name, 'NewUser');
      expect(newState.categoriesSeen.length, 2);
      expect(newState.hasSeenCategory('Cat1'), true);
      expect(newState.hasSeenCategory('Cat2'), true);

      // Ensure original state is unchanged
      expect(state.name, 'OriginalUser');
      expect(state.categoriesSeen.length, 1);
      expect(state.hasSeenCategory('Cat2'), false);
    });

    test("Copy With no changes", () {
      AppState state = AppState(name: 'SameUser', categoriesSeen: ['CatX']);

      AppState newState = state.copyWith();

      expect(newState.name, 'SameUser');
      expect(newState.categoriesSeen.length, 1);
      expect(newState.hasSeenCategory('CatX'), true);
    });
  });
}
