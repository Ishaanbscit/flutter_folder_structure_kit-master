import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/shadows.dart';
import 'package:t_store/common/text/product_title_text.dart';
import 'package:t_store/common/text/t_brand_title_with_verified_icon.dart';
import 'package:t_store/common/widgets/icons/t_circular_icon.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/common/widgets/price/product_price_text.dart';
import 'package:t_store/common/widgets/product_details/product_details.dart';
//import 'package:t_store/common/widgets/product_details/product_details.dart';
import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
/*
class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 150, // Adjusted the width for better rendering
        padding:
            const EdgeInsets.all(8), // Provide padding for overall container
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the start
          children: [
            // Thumbnail, wishlist button, discount tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  // Thumbnail image
                  const TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                  // Discount tag (adjusted position to avoid overflow)
                  Positioned(
                    top: 8, // Adjusted from -5 to avoid rendering issues
                    left: 8,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  // Favourite Icon Button
                  Positioned(
                    top: 8, // Adjusted from -10 for safe layout
                    right: 8, // Moved inside the parent bounds
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            // Product Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product title
                  const TProductTitleText(
                      title: 'Green Nike Air Shoes', smallSize: true),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  // Brand with verified icon
                  TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    maxLines: 1,
                    brandTextSize: TextSizes.large,
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            // Price and Add button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '35.0'),
                ),
                // Add button
                Container(
                  decoration: BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: const Center(
                      child: Icon(Iconsax.add, color: TColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


*/

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 150, // Adjusted the width for better rendering
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: SingleChildScrollView(
          // Added Scroll View
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Thumbnail, wishlist button, discount tag
              TRoundedContainer(
                height: 180,
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: dark ? TColors.dark : TColors.light,
                child: Stack(
                  children: [
                    // Thumbnail image
                    const TRoundedImage(
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                    ),
                    // Discount tag
                    Positioned(
                      top: 8,
                      left: 8,
                      child: TRoundedContainer(
                        radius: TSizes.sm,
                        backgroundColor: TColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm,
                          vertical: TSizes.xs,
                        ),
                        child: Text(
                          '25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black),
                        ),
                      ),
                    ),
                    // Favourite Icon Button
                    Positioned(
                      top: 8,
                      right: 8,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              // Product Details
              Padding(
                padding: const EdgeInsets.only(left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product title
                    const TProductTitleText(
                        title: 'Green Nike Air Shoes', smallSize: true),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    // Brand with verified icon
                    TBrandTitleWithVerifiedIcon(
                      title: 'Nike',
                      maxLines: 1,
                      brandTextSize: TextSizes.large,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              // Price and Add button Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.sm),
                    child: TProductPriceText(price: '35.0'),
                  ),
                  // Add button
                  Container(
                    decoration: BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TSizes.productImageRadius),
                      ),
                    ),
                    child: SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: const Center(
                        child: Icon(Iconsax.add, color: TColors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
