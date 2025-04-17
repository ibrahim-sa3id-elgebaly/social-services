import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/style/app_colors.dart';

class ServiceScreen extends StatelessWidget {
  static const String routeName = "serviceScreen";
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryLightColor,
        title: const Text("Services"),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(
            color: Colors.white
        ),
      ),
      body:Container(
      )
    );
  }
}







