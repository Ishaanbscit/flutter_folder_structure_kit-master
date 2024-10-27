import 'package:flutter/material.dart';
import 'package:t_store/common/text/t_brand_title_with_verified_icon.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({super.key, required this.showBorder, this.onTab});

  final bool showBorder;
  final void Function()? onTab;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTab,
      child: Material(
        elevation: 8, // Elevation to give shadow effect
        shadowColor: isDarkMode
            ? TColors.black.withOpacity(0.6)
            : TColors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(20), // Rounded corners
        child: Container(
          padding: const EdgeInsets.all(TSizes.sm),
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          child: Row(
            children: [
              Flexible(
                child: TCircularImage(
                  isNetworkImage: false,
                  image: TImages.shoeIcon, // Cloth icon image
                  backgroundColor: Colors.transparent,
                  overlayColor: isDarkMode ? TColors.white : TColors.black,
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwItems / 2),

              /// Text Column
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        TBrandTitleWithVerifiedIcon(
                          title: 'Nike',
                          brandTextSize: TextSizes.large,
                        ),
                        const Icon(
                          Icons.verified, // Verified icon
                          color: Colors.blue, // Icon color
                          size: 18, // Icon size
                        ),
                      ],
                    ),
                    Text(
                      '256 products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
