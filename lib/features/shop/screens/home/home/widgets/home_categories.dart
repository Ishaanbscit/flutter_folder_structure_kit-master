import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:t_store/features/shop/screens/home/home/widgets/sub_categgories.dart';
//import 'package:t_store/features/shop/Home/categories_screen.dart';
import 'package:t_store/utils/constants/image_strings.dart';

///import 'package:t_store/utils/helpers/helper_functions.dart';

/*
class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final categories = [
      {"title": "Shoes", "image": TImages.shoeIcon},
      {"title": "Toys", "image": TImages.toyIcon},
      {"title": "Cosmetics", "image": TImages.cosmeticsIcon},
      {"title": "Clothes", "image": TImages.clothIcon},
      {"title": "Sports", "image": TImages.sportIcon},
      {"title": "Jewelry", "image": TImages.jeweleryIcon},
    ];

    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemBuilder: (_, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoriesScreen(
                        category: category,
                      ),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(12),
                child: TVerticalImageText(
                  image: category['image']!,
                  title: category['title']!,
                  imageSize: 60.0,
                  titleStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: dark ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

*/

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
              image: TImages.shoeIcon,
              title: 'shoes',
              imageSize: 100,
              onTab: () => Get.to(() => const SubCategoriesScreen()));
        },
      ),
    );
  }
}
