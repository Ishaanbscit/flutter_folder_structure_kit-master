import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final OnboardingController controller = Get.find();

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: Obx(
        () => ElevatedButton(
          onPressed: () {
            if (controller.currentPageIndex.value == 2) {
              // Last page - Navigate to the login screen
              Navigator.pushReplacementNamed(context, '/login');
              Get.offAllNamed('/login');
            } else {
              // Move to the next page
              controller.nextPage();
            }
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : Colors.black,
          ),
          child: Icon(
            controller.currentPageIndex.value == 2
                ? Iconsax.tick_circle // Use tick icon for the last page
                : Iconsax.arrow_right_3, // Use arrow icon for other pages
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
