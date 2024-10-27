import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/products_cards/product_card_vertical.dart';
//import 'package:t_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/screens/home/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../common/text/section_heading.dart';
/*
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TSearchContainer(
                    text: 'Search in store',
                    icon: Icons.search,
                    onTab: () {
                      // Handle search tap
                    },
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const TSectionHeading(
                          title: 'Categories',
                          showActionButton: true,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                // Pass the banners correctly as a list
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
          ],
        ),
      ),
    );
  }
}
*/

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TSearchContainer(
                    text: 'Search in store',
                    icon: Icons.search,
                    onTab: () {
                      // Handle search tap
                    },
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Categories',
                          showActionButton: true,
                          textColor: dark ? Colors.white : Colors.black,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const THomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                // Pass the banners correctly as a list
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            TSectionHeading(title: 'Popular Products', onPressed: () {}),
            const SizedBox(height: TSizes.spaceBtwItems),

            // Corrected TGridLayout instantiation
            TGridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => const TProductCardVertical(),
            )
          ],
        ),
      ),
    );
  }
}
