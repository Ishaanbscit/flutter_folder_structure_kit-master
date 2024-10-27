// Home Categories Widget
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/common/widgets/image_text_widgets/vertical_image_text.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image:
                'assets/images/products/iphone_14_pro.png', // Update with correct path
            title: 'Iphone14',
            onTab: () {
              // print("Shoe category tapped!"); // Debug log
            },
            imageSize: 43,
          );
        },
      ),
    );
  }
}
