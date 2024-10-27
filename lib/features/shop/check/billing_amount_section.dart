import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              'subToatl',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Expanded(
                child: Text('\$254.0',
                    style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              'shipping fee',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Expanded(
                child: Text('\$6.0',
                    style: Theme.of(context).textTheme.labelLarge)),
          ],
        ),
        //tax fee
        SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              'tax fee',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Expanded(
                child: Text('\$6.0',
                    style: Theme.of(context).textTheme.labelLarge)),
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              'order fee',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Expanded(
                child: Text('\$6.0',
                    style: Theme.of(context).textTheme.titleMedium)),
          ],
        ),
      ],
    );
  }
}
