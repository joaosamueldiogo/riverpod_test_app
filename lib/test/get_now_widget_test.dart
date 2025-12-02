import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_test_app/widgets/carroussel.dart';
import 'package:riverpod_test_app/widgets/get_now_widget.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  testWidgets("Get Now Widget renders correctly", (WidgetTester tester) async {
    await mockNetworkImages(() async {
      await tester.pumpWidget(
        MaterialApp(home: const GetNowWidget(height: 500)),
      );
    });

    Finder getNowWidgetFinder = find.byType(GetNowWidget);
    expect(getNowWidgetFinder, findsOneWidget);
  });

  testWidgets("Get Now Widget has correct title", (WidgetTester tester) async {
    await mockNetworkImages(() async {
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: const GetNowWidget(height: 500),
        ),
      );
    });

    Finder titleFinder = find.text("Get It Now");
    expect(titleFinder, findsOneWidget);
  });

  testWidgets("Carroussel renders correctly", (WidgetTester tester) async {
    await mockNetworkImages(() async {
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: const GetNowWidget(height: 500),
        ),
      );
    });

    Finder carrousselFinder = find.byType(Carroussel);
    expect(carrousselFinder, findsOneWidget);
  });
}
