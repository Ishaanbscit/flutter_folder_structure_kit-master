import 'package:flutter/material.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/card/brand_show_case.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Added 'const'
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace), // Added 'const'
          child: Column(
            children: [
              const TBrandShowcase(
                images: [
                  TImages.productImage5,
                  TImages.productImage3,
                  TImages.productImage9,
                ],
              ),
              const TBrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage10,
                  TImages.productImage7,
                ],
              ),
              const TBrandShowcase(
                images: [
                  TImages.productImage5,
                  TImages.productImage20,
                  TImages.productImage6,
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () => TSectionHeading
                    .new, // Ensure this onPressed callback is implemented
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) =>
                    const TProductCardVertical(), // Added 'const'
              )
            ],
          ),
        ),
      ],
    );
  }
}
