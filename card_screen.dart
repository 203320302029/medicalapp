import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carte Chifa'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                ),
                child: Image.asset(
                  'lib/assets/carte-chifa.jpg',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error_outline, color: Colors.red, size: 40),
                        SizedBox(height: 10),
                        Text('Image not found', style: TextStyle(fontSize: 16)),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}