import 'package:flutter/material.dart';
import 'package:riverpod_test_app/state_management/state_management.dart';

class WelcomeCover extends ConsumerWidget {
  const WelcomeCover({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppState appState = ref.watch(appProvider);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              "https://images.pexels.com/photos/349610/pexels-photo-349610.jpeg",
              fit: BoxFit.cover,
            ),
            Center(
              child: Text(
                "Hi, ${appState.name}!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
