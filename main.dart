import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/sign_in_page.dart';
import '/main_navigation.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sync App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryGreen,
            textStyle: buttonTextStyle,
          ),
        ),
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/signin': (context) => const SignInPage(),
        '/main': (context) {
          final userName = ModalRoute.of(context)!.settings.arguments as String;
          return MainNavigation(userName: userName);
        },
      },
    );
  }
}