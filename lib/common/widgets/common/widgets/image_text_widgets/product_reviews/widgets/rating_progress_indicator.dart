import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/common/widgets/image_text_widgets/product_reviews/widgets/progress_indicator_and_rating.dart';
//import 'package:t_store/features/shop/Product_reviews/rating_progress_bar.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
    required this.ratings,
  });

  final Map<int, double> ratings;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8', // Example average rating
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(fontSize: 48),
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: ratings.entries.map((entry) {
              return TRatingProgressIndicator(
                text: entry.key.toString(),
                value: entry.value,
              );
            }).toList(),
          ),
        ),

        /// RatingProgressBar(ratingCounts: ratingCounts),
      ],
    );
  }
}
