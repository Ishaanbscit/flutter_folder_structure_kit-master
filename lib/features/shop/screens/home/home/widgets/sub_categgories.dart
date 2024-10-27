import 'package:flutter/material.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';

///import 'package:t_store/common/widgets/products/products_cards/t_product_card_horizontal.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../../../common/widgets/products/products_cards/product_cards_horizontal.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        title: Text('Sport Shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Added alignment
            children: [
              // Banner
              const TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.promoBanner1,
                applyImageRadius: true,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Sub-categories section
              TSectionHeading(
                title: 'Sports Shirts',
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),

              // ListView with defined height
              SizedBox(
                height: 120, // Defining height for ListView
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemBuilder: (context, index) =>
                      const TProductCardHorizontal(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
