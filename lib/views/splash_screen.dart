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
      const Duration(seconds: 3),
      () {
        // Navigate to the login screen after delay
        Get.offAllNamed(AppRoutes.home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text under the logo
          Text(
            'Welcome to Mobile TV REMOTE',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 20),
          Text(
            'Welcome to Mobile TV REMOTE',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ],
      ),
    );
  }
}
