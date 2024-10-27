import 'package:flutter/material.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TBillingAdressSection extends StatelessWidget {
  const TBillingAdressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        const Text(
          'Coding with Ishaan',
          style: TextStyle(fontSize: 16), // Use a fixed size
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            const Text('82104567',
                style: TextStyle(fontSize: 16)), // Fixed size
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            const Expanded(
              child: Text('Civil Line Buxar',
                  style: TextStyle(fontSize: 16)), // Fixed size
            ),
          ],
        ),
      ],
    );
  }
}
