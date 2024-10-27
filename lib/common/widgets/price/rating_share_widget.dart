import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TRatingShare extends StatelessWidget {
  const TRatingShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating display
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24),
            SizedBox(
                width: TSizes.spaceBtwItems /
                    2), // Ensure TSizes is defined correctly
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '5.0',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge, // Ensure bodyLarge exists in textTheme
                  ),
                  const TextSpan(text: ' (199)'),
                ],
              ),
            ),
          ],
        ),

        // Share button
        IconButton(
          onPressed: () {
            // Implement sharing functionality here
          },
          icon: const Icon(
            Icons.share,
            size: TSizes.iconMd, // Ensure TSizes.iconMd is properly defined
          ),
        ),
      ],
    );
  }
}
