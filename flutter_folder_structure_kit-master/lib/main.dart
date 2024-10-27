import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:t_store/features/authentication/screen/login/login.dart';
import 'package:t_store/features/authentication/screen/onboarding/onboarding.dart';
import 'package:t_store/features/authentication/screen/splash_screen.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/theme/theme.dart'; // Import the SplashScreen

void main() {
  Get.put(OnboardingController());
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialRoute: '/splash', // Set the initial route to splash
      getPages: [
        GetPage(
            name: '/splash', page: () => const SplashScreen()), // Splash Screen
        GetPage(
            name: '/',
            page: () => const OnBoardingScreen()), // Onboarding Screen
        GetPage(
            name: '/login', page: () => const LoginScreen()), // Login Screen
      ],
    );
  }
}

/*
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      themeMode: ThemeMode.system,
      theme:TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
*/
//flutter pub run flutter_native_splash:remove
//flutter pub run flutter_native_splash:create --splash-1=assets/splash.png --splash
