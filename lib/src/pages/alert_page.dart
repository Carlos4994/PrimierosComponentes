import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_location),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
