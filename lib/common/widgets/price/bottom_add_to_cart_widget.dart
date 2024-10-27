import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart'; // Ensure you have this package for icons
import 'package:t_store/features/shop/Product_reviews/product_reviews.dart'
    as reviews; // Use prefix
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart' as sizes; // Use prefix
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
        horizontal: sizes.TSizes.defaultSpace,
        vertical: sizes.TSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        gradient: dark
            ? LinearGradient(
                colors: [
                  TColors.primary,
                  TColors.darkGrey,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : LinearGradient(
                colors: [
                  TColors.light,
                  TColors.lightGrey,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(sizes.TSizes.cardRadiusLg),
          topRight: Radius.circular(sizes.TSizes.cardRadiusLg),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Reviews header
          LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reviews (199)',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: dark ? TColors.white : TColors.black,
                        ),
                  ),
                  IconButton(
                    icon: const Icon(Iconsax.arrow_right_3),
                    color: dark ? TColors.white : TColors.black,
                    onPressed: () {
                      // Navigate to Reviews screen
                      Get.to(() => const reviews
                          .ProductReviewsScreen()); // Use prefix for navigation
                    },
                  ),
                ],
              );
            },
          ),

          // Main row with increment/decrement and add to cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Decrement Button
              GestureDetector(
                onTap: decrement,
                child: Container(
                  decoration: BoxDecoration(
                    color: TColors.darkGrey,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Iconsax.minus,
                    color: TColors.white,
                  ),
                ),
              ),

              // Item Count Display
              Text(
                '$itemCount',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: dark ? TColors.white : TColors.black,
                    ),
              ),

              // Increment Button
              GestureDetector(
                onTap: increment,
                child: Container(
                  decoration: BoxDecoration(
                    color: TColors.darkGrey,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Iconsax.add,
                    color: TColors.white,
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
        ],
      ),
    );
  }
}
