import 'package:flutter/material.dart';

class WelcomeCover extends StatelessWidget {
  const WelcomeCover({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: BlocBuilder<AppCubit, AppState>(
                builder: (context, state) {
                  return Text(
                    "Hi, ${state.name}!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
