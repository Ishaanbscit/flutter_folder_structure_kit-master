import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/products/products_cards/product_card_vertical.dart';

import '../../common/widgets/layouts/grid_layout.dart';
import '../../utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort), // Changed to valid icon
          ),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Rate',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity',
          ].map((option) {
            return DropdownMenuItem(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        TGridLayout(
            itemCount: 11, itemBuilder: (_, index) => TProductCardVertical())
      ],
    );
  }
}
