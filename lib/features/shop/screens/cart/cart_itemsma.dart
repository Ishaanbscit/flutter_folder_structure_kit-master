import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/cart/cart_item.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/common/widgets/price/product_price_text.dart';
import 'package:t_store/features/shop/screens/cart/add_remove_button.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Use SizedBox to constrain the height
      height: 300, // Set a fixed height or make it dynamic
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        itemCount: 4, // Replace with your dynamic count
        itemBuilder: (_, index) => Column(
          children: [
            const TCartItem(),
            if (showAddRemoveButtons) ...[
              SizedBox(height: TSizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TProductQuantityWithAddRemoveButton(),
                  TProductPriceText(price: '254'), // Example price
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
