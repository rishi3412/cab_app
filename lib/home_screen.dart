import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String role;

  const HomeScreen({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cab App")),
      body: Center(
        child: Text(
          "Logged in as $role ✅",
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
