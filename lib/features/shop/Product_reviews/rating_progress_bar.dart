import 'package:flutter/material.dart';

class RatingProgressBar extends StatelessWidget {
  final Map<int, int> ratingCounts; // Number of reviews for each rating (1-5)

  const RatingProgressBar({super.key, required this.ratingCounts});

  @override
  Widget build(BuildContext context) {
    // Calculate total reviews to determine percentages
    int totalReviews = ratingCounts.values.fold(0, (sum, count) => sum + count);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(5, (index) {
        int rating = 5 - index; // Ratings from 5 to 1
        double percentage =
            totalReviews > 0 ? (ratingCounts[rating] ?? 0) / totalReviews : 0;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$rating Star',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 8.0),
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: percentage,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                ),
              ),
              Text('${ratingCounts[rating] ?? 0}',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        );
      }),
    );
  }
}
