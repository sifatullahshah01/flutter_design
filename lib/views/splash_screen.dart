import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../AppRoutes/app_routes.dart'; // Ensure this is the correct path for your routes

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(microseconds: 300),
      () {
        // Navigate to the login screen after delay
        Get.offAllNamed(AppRoutes.main);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text under the logo
              Text(
                'TV REMOTE',
                textAlign: TextAlign.center,
                style: Get.textTheme.displayLarge?.copyWith(letterSpacing: 4),
              ),
              const SizedBox(height: 20),
              Text(
                'Welcome to Mobile TV REMOTE',
                textAlign: TextAlign.center,
                style: Get.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
