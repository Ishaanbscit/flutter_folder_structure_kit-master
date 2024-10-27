// Rating progress indicator widget
import 'package:flutter/material.dart';
import 'package:t_store/utils/device/device_utility.dart';

///import '../../../../../../../features/shop/Product_reviews/product_reviews.dart';

class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            flex: 11,
            child: SizedBox(
              width: TDeviceUtils.getScreenWidth(context) * 0.8,
              child: LinearProgressIndicator(
                value: value,
                minHeight: 12,
                backgroundColor:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).colorScheme.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
