import 'package:flutter/material.dart';
import 'package:riverpod_test_app/main.dart';
import 'package:riverpod_test_app/pages/home.dart';
import 'package:riverpod_test_app/state_management/state_management.dart';

class SignIn extends ConsumerWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppState appState = ref.watch(appProvider);

    void navigateToHome() {
      if (appState.name.isEmpty) return;
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
          child: Container(
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 24,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Create an account",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Enter your name to sign up for this app",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      onChanged: (value) =>
                          ref.read(appProvider.notifier).setName(value),
                      onSubmitted: (_) => navigateToHome(),
                      style: TextStyle(color: Color(0xff424242), fontSize: 14),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff5f5f5),
                        hintText: "Your Name",
                        hintStyle: TextStyle(
                          color: Color(0xff828282),
                          fontSize: 14,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Icon(
                            Icons.person,
                            color: Color(0xff828282),
                            size: 20,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: navigateToHome,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 32,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey,
                        ),
                        children: const [
                          TextSpan(
                            text: "By clicking continue, you agree to our ",
                          ),
                          TextSpan(
                            text: "Terms of Service",
                            style: TextStyle(
                              fontWeight: FontWeight.w600, // make it bold
                              color: Colors.black, // optional color change
                            ),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
