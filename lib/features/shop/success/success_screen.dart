import 'package:flutter/material.dart';
//////import 'package:get/get.dart';
///import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

///import 'package:t_store/utils/constants/image_strings.dart';

class SuccessScreen extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;

  const SuccessScreen({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [TColors.darkGrey, TColors.primaryBackground],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(image, height: 150), // Success Icon
                const SizedBox(height: TSizes.spaceBtwSections),

                // Title
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: TColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSizes.defaultSpace),

                // Subtitle
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: TColors.white.withOpacity(0.8),
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSizes.defaultSpace * 2),

                // Button
                ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.defaultSpace * 3,
                      vertical: TSizes.defaultSpace,
                    ),
                    backgroundColor: TColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ), // Button color
                  ),
                  child: Text(
                    'Continue Shopping',
                    style: TextStyle(
                      color: TColors.buttonPrimary, // Text color
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
