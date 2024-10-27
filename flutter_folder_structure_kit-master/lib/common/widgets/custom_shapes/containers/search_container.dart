import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal, // Default icon
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    required Null Function() onTab,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground;
  final bool showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode =
        THelperFunctions.isDarkMode(context); // Check for dark mode
    final Color backgroundColor = showBackground
        ? (isDarkMode ? TColors.black : TColors.light)
        : Colors.transparent;
    final Color borderColor = showBorder ? TColors.grey : Colors.transparent;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context) -
              2 * TSizes.defaultSpace, // Full width minus padding
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: backgroundColor, // Dynamic background color
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: Border.all(color: borderColor), // Dynamic border color
          ),
          child: Row(
            children: [
              Icon(icon,
                  size: 24,
                  color: isDarkMode
                      ? TColors.darkerGrey
                      : Colors.grey), // Set a size for the icon
              const SizedBox(
                  width: TSizes.spaceBtwItems), // Space between icon and text
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: TColors.grey, // Readability
                      ),
                  overflow:
                      TextOverflow.ellipsis, // Handle long text gracefully
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
