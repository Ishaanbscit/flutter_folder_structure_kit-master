import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/common/widgets/price/bottom_add_to_cart_widget.dart';
import 'package:t_store/common/widgets/price/rating_share_widget.dart';
import 'package:t_store/common/widgets/product_details/product_attributes.dart';
import 'package:t_store/common/widgets/product_details/product_details_image_slider.dart';
import 'package:t_store/common/widgets/product_details/product_meta_deta.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark =  THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          //product image slider
          TProductImageSlider(),

          // product details

          Padding(
            padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                /// RAtingn and share
                TRatingShare(),

                /// price, title, stack and barand
                TProductMetaData(),

                /// atatributes
                TProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// checkout button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('checkout'))),

                /// description

                const TSectionHeading(
                  title: 'Descripation',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                ReadMoreText(
                  'This is a product description for blue Nike Sleeve less Vest. There are more things that can be added but I am...',
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

                /// Reviews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwSections),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     const TSectionHeading(
                //         title: 'Reviews (199)', showActionButton: false),
                //     IconButton(
                //         icon: Icon(Iconsax.arrow_right3),
                //         onPressed: () =>
                //             Get.to(() => const ProductReviewsScreen())),
                //   ],
                // ),

                TBottomAddToCart(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
