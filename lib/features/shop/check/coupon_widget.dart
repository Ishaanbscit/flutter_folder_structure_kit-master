import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCoupnCode extends StatelessWidget {
  const TCoupnCode({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: EdgeInsets.fromLTRB(
        TSizes.md, // left
        TSizes.sm, // top
        TSizes.sm, // right
        TSizes.sm, // bottom
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here',
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 10), // Added spacing
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? TColors.white.withOpacity(0.5)
                    : TColors.dark.withOpacity(0.2),
                backgroundColor: Colors.grey.withOpacity(0.1),
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
