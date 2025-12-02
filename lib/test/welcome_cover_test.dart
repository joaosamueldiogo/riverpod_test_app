import 'package:riverpod_test_app/state_management/app_notifier.dart';
import 'package:riverpod_test_app/state_management/state_management.dart';
import 'package:test/test.dart';

void main() {
  test('Set name in AppNotifier', () {
    AppState state = AppState();
    state.name = 'Initial';

    expect(state.name, 'Initial');
  });

  test("Mark Category has Completed", () {
    final container = ProviderContainer.test(
      overrides: [appProvider.overrideWith(() => AppNotifier())],
    );

    AppNotifier notifier = container.read(appProvider.notifier);

    expect(notifier.state.categoriesSeen.isEmpty, true);

    notifier.markCategoryAsSeen('Category1');
    expect(notifier.state.hasSeenCategory('Category1'), true);

    notifier.markCategoryAsSeen('Category2');
    expect(notifier.state.hasSeenCategory('Category2'), true);
    expect(notifier.state.categoriesSeen.length, 2);
  });
}
