import 'package:flutter/material.dart';
import 'package:riverpod_test_app/pages/sign_in.dart';

class TestNavigationBar extends StatelessWidget {
  const TestNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade200)),
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onDoubleTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
              child: Icon(Icons.home, color: Colors.black, size: 28),
            ),
            Icon(Icons.person, color: Colors.grey, size: 28),
          ],
        ),
      ),
    );
  }
}
