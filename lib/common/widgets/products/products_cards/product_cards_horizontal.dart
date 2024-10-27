import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/text/product_title_text.dart';
import 'package:t_store/common/text/t_brand_title_with_verified_icon.dart';
import 'package:t_store/common/widgets/icons/t_circular_icon.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/common/widgets/price/product_price_text.dart';
import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return SizedBox(
      width: 250, // Set fixed width for the card
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.softGrey,
        ),
        child: Row(
          children: [
            // Image Section
            TRoundedContainer(
              height: 120,
              width: 120, // Fixed size for the image container
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundedImage(
                    height: 120,
                    width: 120,
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                  // Discount Label Positioned
                  Positioned(
                    top: -8,
                    left: -8,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge?.apply(
                              color: TColors.black,
                            ),
                      ),
                    ),
                  ),
                  // Favourite Icon Button Positioned
                  Positioned(
                    top: -8,
                    right: -8,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
                width: TSizes.sm), // Add space between image and text

            // Expanded section for text
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TProductTitleText(
                      title: 'Green Nike Half Sleeves Shirt',
                      smallSize: true,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    const TBrandTitleWithVerifiedIcon(title: 'Nike'),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TProductPriceText(price: '256.0'),
                        Container(
                          decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: Center(
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
          ],
        ),
      ),
    );
  }
}
