import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screen/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // PageController to control the PageView
  final PageController pageController = PageController();

  // Tracks the current page index
  Rx<int> currentPageIndex = 0.obs;

  // Update the current index when the page is scrolled
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  // Jump to the specified page when a dot is clicked
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Navigate to the next page or login screen
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Logic to navigate to the login screen
      Get.offAll(() =>
          const LoginScreen()); // Navigates to the login screen and clears history
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Skip to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2); // Skip to the last onboarding page
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
