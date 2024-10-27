import 'package:flutter/material.dart';
import 'package:t_store/common/text/product_title_text.dart';
import 'package:t_store/common/text/t_brand_title_with_verified_icon.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/price/product_price_text.dart';
import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price and Sale Price
        Row(
          children: [
            // Sale Tag
            TRoundedContainer(
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
                    .labelLarge
                    ?.apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            // Original Price with Strikethrough
            Flexible(
              child: Text(
                '\$250',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
              ),
            ),

            const SizedBox(width: TSizes.spaceBtwItems),

            // Sale Price
            const TProductPriceText(price: '175', isLarge: true),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Product Title
        const TProductTitleText(title: 'Green Nike Sport Shirt'),

        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Status Section
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Brand Section
        Row(
          children: [
            // Circular Brand Image
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            // Brand with Verified Icon
            TBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
