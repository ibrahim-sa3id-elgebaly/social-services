import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = "Settings";
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
