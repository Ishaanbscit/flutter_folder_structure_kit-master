import 'package:flutter/material.dart';
import 'package:t_store/common/text/product_title_text.dart';
import 'package:t_store/common/text/t_brand_title_with_verified_icon.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
//import 'package:t_store/features/shop/Home/cart_screen.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TRoundedImage(
            imageUrl: TImages.productImage1,
            width: 60,
            height: 60,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.darkerGrey
                : TColors.light,
          ),
        ),
        const SizedBox(
            width: TSizes.spaceBtwItems), // Spacing between image and text
        // Text(
        //   'Product Name $index', // Replace with actual product name
        //   style: Theme.of(context).textTheme.titleLarge,
        // ),

        // Title , Price, and siz
        //CartScreen()

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleWithVerifiedIcon(
                title: 'Nike',
              ),
              Flexible(
                child:
                    TProductTitleText(title: 'Black Sports shoes', maxLines: 1),
              ),
              //Attribute
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: ' - INK 18',
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
