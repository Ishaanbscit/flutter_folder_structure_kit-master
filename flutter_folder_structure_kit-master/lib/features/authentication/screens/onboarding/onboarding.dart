import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/features/authentication/screen/onboarding/widgets/onboarding_page.dart';
//import 'package:t_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
//import 'package:t_store/features/authentication/screen/onboarding/onboarding_skip.dart';
//import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // Initialize PageController
  final PageController _pageController = PageController();

  // Track the current page
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable page
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Smooth Page Indicator
          Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 50,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3, // Number of pages
                effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.black,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              ),
            ),
          ),

          // Circular Next Button
          OnBoardingNextButton(
            currentPage: _currentPage,
            pageController: _pageController,
          ),
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
    required this.currentPage,
    required this.pageController,
  });

  final int currentPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          if (currentPage == 2) {
            // Last page - Navigate to another screen (Login screen)
            Navigator.pushReplacementNamed(context, '/login');
          } else {
            // Move to the next page
            pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : Colors.black,
        ),
        child: Icon(
          currentPage == 2 ? Iconsax.tick_circle : Iconsax.arrow_right_3,
          color: Colors.white,
        ),
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          // Skip the onboarding and go directly to the login screen
          Navigator.pushReplacementNamed(context, '/login');
        },
        child: const Text('Skip'),
      ),
    );
  }
}
