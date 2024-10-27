import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/common/widgets/image_text_widgets/product_reviews/widgets/rating_indicator.dart';
import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('Ishana kumari',
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        ///Reviews
        ///

        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(' 8 oct, 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        ReadMoreText(
          'The User Interface of the app is intvitive. I was to navigate and make purchanes seamlessly. Greate job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        ///company review
        ///
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('IT Store',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('8 oct 2024',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                ReadMoreText(
                  'The User Interface of the app is intvitive. I was to navigate and make purches seamlessly. Greate job!',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                  lessStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
