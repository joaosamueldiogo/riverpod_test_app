import 'package:flutter/material.dart';
import 'package:riverpod_test_app/state_management/state_management.dart';
import 'package:riverpod_test_app/widgets/get_now_widget.dart';
import 'package:riverpod_test_app/widgets/navigation_bar.dart';
import 'package:riverpod_test_app/widgets/search_field.dart';
import 'package:riverpod_test_app/widgets/try_new_things_widget.dart';
import 'package:riverpod_test_app/widgets/welcome_cover.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
          child: RefreshIndicator(
            onRefresh: () async {
              Future.delayed(const Duration(seconds: 1));
              ref.read(appProvider.notifier).resetCategoriesSeen();
            },
            backgroundColor: Colors.white,
            color: Colors.green,

            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: MediaQuery.of(context).size.height * 0.03,
                children: [
                  SearchField(),
                  WelcomeCover(),
                  TryNewThingsWidget(
                    height: MediaQuery.of(context).size.height * 0.16,
                  ),
                  GetNowWidget(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: TestNavigationBar(),
    );
  }
}
