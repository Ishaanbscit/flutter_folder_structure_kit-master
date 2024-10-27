import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/common/widgets/price/bottom_add_to_cart_widget.dart';
import 'package:t_store/common/widgets/price/rating_share_widget.dart';
import 'package:t_store/common/widgets/product_details/product_attributes.dart';
import 'package:t_store/common/widgets/product_details/product_details_image_slider.dart';
import 'package:t_store/common/widgets/product_details/product_meta_deta.dart';

///import 'package:t_store/features/shop/Product_reviews/product_reviews.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product image slider
            const TProductImageSlider(),

            // Product details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// Rating and share
                  const TRatingShare(),

                  // Reviews header
                  // LayoutBuilder(
                  //   builder: (context, constraints) {
                  //     return Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         const TSectionHeading(
                  //           title: 'Reviews (199)',
                  //           showActionButton: false,
                  //         ),
                  //         IconButton(
                  //           icon: const Icon(Iconsax.arrow_right3),
                  //           onPressed: () =>
                  //               Get.to(() => const ReviewsScreen()),
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // ),

                  /// Price, title, stack, and brand
                  const TProductMetaData(
                    price: 200,
                  ),

                  /// Attributes
                  const TProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwItems),

                  /// Checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),

                  /// Description
                  TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    'This is a product description for blue Nike Sleeveless Vest...',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                    trimCollapsedText: 'Show More',
                    trimExpandedText: ' Less',
                  ),

                  /// Reviews Section
                  const Divider(),
                  SizedBox(height: TSizes.spaceBtwItems),

                  // Increase height for bottom add to cart
                  const TBottomAddToCart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Placeholder Reviews Screen
class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Reviews'),
      ),
      body: const Center(
        child: Text('This is the Reviews Screen'),
      ),
    );
  }
}
