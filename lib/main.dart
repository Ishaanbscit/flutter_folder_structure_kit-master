import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
//import 'package:t_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:t_store/features/authentication/screen/login/login.dart';
import 'package:t_store/features/authentication/screen/onboarding/onboarding.dart';
import 'package:t_store/features/authentication/screen/splash_screen.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/theme/theme.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize OnboardingController and AuthenticationRepository
  Get.put(OnboardingController());
  Get.put(AuthenticationRepository());

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
      initialRoute: '/splash',
      getPages: [
        GetPage(
          name: '/splash',
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: '/',
          page: () => const OnBoardingScreen(),
        ),
        GetPage(
          name: '/login',
          page: () => const LoginScreen(),
        ),
      ],
    );
  }
}

class AuthenticationRepository extends GetxService {
  // Add your authentication methods here
}
