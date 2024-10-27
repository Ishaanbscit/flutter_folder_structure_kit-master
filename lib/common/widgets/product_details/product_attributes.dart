import 'package:flutter/material.dart';
import 'package:t_store/common/text/product_title_text.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/common/widgets/price/product_price_text.dart';
import 'package:t_store/common/widgets/product_details/chip/choice_chip.dart';
import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatefulWidget {
  const TProductAttributes({super.key});

  @override
  _TProductAttributesState createState() => _TProductAttributesState();
}

class _TProductAttributesState extends State<TProductAttributes> {
  int _selectedColorIndex = 1; // Default selected index for colors
  int _selectedSizeIndex = 0; // Default selected index for sizes

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TSectionHeading(
                title: 'Variation',
                showActionButton: false,
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Price Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TProductTitleText(title: 'Price:', smallSize: true),
                  Row(
                    children: [
                      // Strikethrough price
                      Text(
                        '\$25',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              decoration: TextDecoration.lineThrough,
                              color:
                                  dark ? TColors.lightGrey : TColors.darkerGrey,
                            ),
                      ),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      const TProductPriceText(price: '20'),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: TSizes.spaceBtwItems),

              // Stock Status Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TProductTitleText(title: 'Status:', smallSize: true),
                  Text(
                    'In Stock',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),

              const SizedBox(height: TSizes.spaceBtwItems),

              // Product Description
              const TProductTitleText(
                title:
                    'This is the description of the product and it can go up to a maximum of 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        // Attribute Section for Colors
        _buildAttributeSection(
          context,
          title: 'Colors',
          choices: [
            'Green',
            'Blue',
            'Yellow',
            'Red',
            'Purple',
          ],
          selectedIndex: _selectedColorIndex,
          onSelected: (index) {
            setState(() {
              _selectedColorIndex = index;
            });
          },
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        // Attribute Section for Sizes
        _buildAttributeSection(
          context,
          title: 'Sizes',
          choices: [
            'EU 34',
            'EU 36',
            'EU 39',
          ],
          selectedIndex: _selectedSizeIndex,
          onSelected: (index) {
            setState(() {
              _selectedSizeIndex = index;
            });
          },
        ),
      ],
    );
  }

  Widget _buildAttributeSection(BuildContext context,
      {required String title,
      required List<String> choices,
      required int selectedIndex,
      required Function(int) onSelected}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: title,
          showActionButton: false,
          onPressed: () {},
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Wrap(
          spacing: 8,
          children: List.generate(choices.length, (index) {
            return TChoiceChip(
              text: choices[index],
              selected: index == selectedIndex,
              onSelected: (isSelected) {
                if (isSelected) {
                  onSelected(index); // Call the passed function
                }
              },
            );
          }),
        ),
      ],
    );
  }
}
