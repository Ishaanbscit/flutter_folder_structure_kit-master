import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CartScreenishaan extends StatelessWidget {
  const CartScreenishaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // If you have other UI elements, you can add them here
            Expanded(
              child: ListView.separated(
                separatorBuilder: (_, __) => const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                itemCount: 4, // Replace with your dynamic count
                itemBuilder: (_, index) => Row(
                  children: [
                    TRoundedImage(
                      imageUrl: TImages.productImage1,
                      width: 60,
                      // Corrected typo from 'hegiht' to 'height'
                      padding: EdgeInsets.all(TSizes.sm),
                      backgroundColor: THelperFunctions.isDarkMode(context)
                          ? TColors.darkerGrey
                          : TColors.light,
                    ),
                    const SizedBox(
                        width: TSizes
                            .defaultSpace), // Spacing between image and text
                    Text(
                      'Product Name $index', // Replace with actual product name
                      style: Theme.of(context).textTheme.titleLarge,
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
