import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String userName;

  const HomeScreen({
    super.key,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $userName'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good Morning,',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$userName!',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Measurements',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: [
                  MeasurementCard(
                    title: 'Blood Pressure (bpm)',
                    value: '141/90',
                    time: 'last 4 hours',
                    updatedTime: '7 min ago',
                    textColor: Colors.red,
                  ),
                  MeasurementCard(
                    title: 'Blood Oxygen (spo2)',
                    value: '90/60',
                    time: 'last 4 hours',
                    updatedTime: '7 min ago',
                    textColor: Colors.yellow,
                  ),
                  MeasurementCard(
                    title: 'Temperature (°C)',
                    value: '37 °C',
                    time: 'last 4 hours',
                    updatedTime: '20 min ago',
                    textColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MeasurementCard extends StatelessWidget {
  final String title;
  final String value;
  final String time;
  final String updatedTime;
  final Color textColor;

  const MeasurementCard({
    super.key,
    required this.title,
    required this.value,
    required this.time,
    required this.updatedTime,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 32,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '$time - $updatedTime',
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}