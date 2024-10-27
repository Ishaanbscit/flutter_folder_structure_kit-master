import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/shop/Home/cart_screen.dart';
import 'package:t_store/utils/constants/colors.dart';
//import 'package:t_store/utils/constants/text_strings.dart';

// Home App Bar Widget
class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good day for shopping ',
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: TColors.grey,
                ),
          ),
          Text(
            'Welcome Back',
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: const Color.fromARGB(255, 163, 51, 51),
                ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            Get.to(() => CartScreen()); // Navigate to Cart Screen
          },
        ),
      ],
    );
  }
}
