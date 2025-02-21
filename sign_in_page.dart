import 'package:flutter/material.dart';
import '../constants.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/3094352.png'),
                const SizedBox(height: 20),
                const Text(
                  'Sign in ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: _userIdController,
                  decoration: const InputDecoration(labelText: 'User ID'),
                ),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryGreen,
                  ),
                  onPressed: () {
                    final userName = _userIdController.text.trim();
                    Navigator.pushReplacementNamed(
                      context,
                      '/main',
                      arguments: userName,
                    );
                  },
                  child: const Text(
                    'Sign in',
                    style: buttonTextStyle,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (bool? value) {
                            setState(() => _rememberMe = value ?? false);
                          },
                          activeColor: primaryGreen,
                        ),
                        const Text('Remember me'),
                      ],
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: primaryGreen,
                      ),
                      onPressed: () {},
                      child: const Text('Forgot password?'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}