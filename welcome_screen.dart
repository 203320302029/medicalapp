import 'package:flutter/material.dart';
import '../constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/3094352.png'), // Changed to use login image
            const SizedBox(height: 40),
            const Text(
              'Welcome to الصحة معلومة',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryGreen,
              ),
              onPressed: () => Navigator.pushNamed(context, '/signin'),
              child: const Text(
                'Get Started',
                style: buttonTextStyle, // White text
              ),
            ),
          ],
        ),
      ),
    );
  }
}