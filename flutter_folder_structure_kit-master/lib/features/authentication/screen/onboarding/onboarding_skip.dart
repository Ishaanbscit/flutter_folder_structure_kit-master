import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/features/authentication/controllers.onboarding/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          // Skip directly to the last page or navigate to the login screen
          OnboardingController.instance.skipPage();
        },
        child: const Text('Skip'),
      ),
    );
  }
}
