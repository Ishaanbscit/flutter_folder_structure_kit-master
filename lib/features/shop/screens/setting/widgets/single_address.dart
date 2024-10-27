import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
//import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddres});

  final bool selectedAddres;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddres
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddres
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddres ? Iconsax.tick_circle5 : null,
              color: selectedAddres
                  ? dark
                      ? TColors.light
                      : TColors.dark.withOpacity(0.1)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ishaan Kumar',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge, // Fixed here
              ),
              const SizedBox(height: TSizes.sm / 2),
              const Text(
                '(+91) 821045923',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              Text(
                '802101 Sainik Colony, Golamber, Buxar, Bihar, India',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          )
        ],
      ),
    );
  }
}
