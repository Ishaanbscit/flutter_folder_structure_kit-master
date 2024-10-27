import 'package:flutter/material.dart';
//import 'package:t_store/common/widgets/product_details/chip/chip_theme.dart';
//import 'package:t_store/common/widgets/product_details/chip/theme.dart';
import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';
import 'package:t_store/features/shop/card/bard_card.dart';
import 'package:t_store/utils/constants/colors.dart';
//import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      showBorder: true,
      borderColor: TColors.darkGrey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          ///Brands with Product count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),

          ///Brand top 3 product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(), // Converted Iterable to List
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(TSizes.md),
        margin: const EdgeInsets.only(right: TSizes.sm),
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkGrey
            : TColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
