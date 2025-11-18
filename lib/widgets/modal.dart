import 'package:flutter/material.dart';
import 'package:riverpod_test_app/state_management/state_management.dart';

class Modal extends ConsumerWidget {
  const Modal({super.key, required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              "$categoryName food",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text(
                'Try it now!',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                ref.read(appProvider.notifier).markCategoryAsSeen(categoryName);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
