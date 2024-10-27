import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart'; // Ensure you have this package for icons
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBottomAddToCart extends StatefulWidget {
  const TBottomAddToCart({super.key});

  @override
  _TBottomAddToCartState createState() => _TBottomAddToCartState();
}

class _TBottomAddToCartState extends State<TBottomAddToCart> {
  int itemCount = 1; // Initial item count

  void increment() {
    setState(() {
      itemCount++;
    });
  }

  void decrement() {
    if (itemCount > 1) {
      setState(() {
        itemCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: TSizes.defaultSpace,
        vertical: TSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        gradient: dark
            ? LinearGradient(
                colors: [
                  TColors.primary,
                  TColors.darkGrey
                ], // Adjust colors for dark mode
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : LinearGradient(
                colors: [
                  TColors.light,
                  TColors.lightGrey
                ], // Adjust colors for light mode
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Space between items
        children: [
          // Decrement Button
          GestureDetector(
            onTap: decrement,
            child: Container(
              decoration: BoxDecoration(
                color: TColors.darkGrey, // Background color for buttons
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(10), // Adjust padding as needed
              child: const Icon(
                Iconsax.minus,
                color: TColors.white, // Icon color
              ),
            ),
          ),

          // Item Count Display
          Text(
            '$itemCount', // Display dynamic count
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: dark
                      ? TColors.white
                      : TColors.black, // Text color based on theme
                ),
          ),

          // Increment Button
          GestureDetector(
            onTap: increment,
            child: Container(
              decoration: BoxDecoration(
                color: TColors.darkGrey, // Background color for buttons
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(10), // Adjust padding as needed
              child: const Icon(
                Iconsax.add,
                color: TColors.white, // Icon color
              ),
            ),
          ),

          // Add to Cart Button
          ElevatedButton(
            onPressed: () {
              // Handle add to cart logic here
            },
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
