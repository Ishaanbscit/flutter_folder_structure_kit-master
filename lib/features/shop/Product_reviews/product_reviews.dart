import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/common/widgets/image_text_widgets/product_reviews/widgets/rating_indicator.dart';
import 'package:t_store/common/widgets/common/widgets/image_text_widgets/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:t_store/features/shop/Product_reviews/rating_progress_bar.dart';
import 'package:t_store/features/shop/Product_reviews/user_review_card.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatefulWidget {
  const ProductReviewsScreen({super.key});

  @override
  _ProductReviewsScreenState createState() => _ProductReviewsScreenState();
}

class _ProductReviewsScreenState extends State<ProductReviewsScreen> {
  // Example rating data (replace it with dynamic data)
  Map<int, int> ratingCounts = {
    5: 5000,
    4: 3000,
    3: 2000,
    2: 1500,
    1: 1000,
  };

  void _updateRating(int rating) {
    setState(() {
      // Increment the count for the given rating
      ratingCounts[rating] = (ratingCounts[rating] ?? 0) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: const Text('Reviews and Ratings'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ratings and reviews are verified from users who use similar devices.',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Align the overall product rating, rating bar indicator, and rating progress bar
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TOverallProductRating(
                    ratings: {},
                  ),
                  const TRatingBarIndicator(rating: 3.5),
                  Text(
                    "12,611 ratings",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  // Add the progress bar indicator for ratings 1 to 5
                  RatingProgressBar(ratingCounts: ratingCounts),
                ],
              ),

              const SizedBox(height: TSizes.spaceBtwItems),

              // Responsive button layout
              LayoutBuilder(
                builder: (context, constraints) {
                  return Wrap(
                    spacing: 8.0, // Space between buttons
                    runSpacing: 8.0, // Space between rows
                    alignment: WrapAlignment.start,
                    children: List.generate(5, (index) {
                      return ElevatedButton(
                        onPressed: () => _updateRating(index + 1),
                        child: Text('${index + 1}-Star Review'),
                      );
                    }),
                  );
                },
              ),

              const SizedBox(height: TSizes.spaceBtwItems),

              // User Reviews List
              const UserReviewCard(), // Example user review cards
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
