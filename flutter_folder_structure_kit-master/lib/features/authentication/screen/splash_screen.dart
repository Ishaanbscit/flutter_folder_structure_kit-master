import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulate a loading delay
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed('/'); // Navigate to the Onboarding screen
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logos/t-store-splash-logo-white.png', // Update the path if needed
            ),
            const SizedBox(height: 20),
            Text(
              'TStore', // Use TTexts.appName if needed
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
