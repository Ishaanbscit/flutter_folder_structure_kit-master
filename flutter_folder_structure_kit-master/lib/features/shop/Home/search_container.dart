// // Search Container Widget
// import 'package:flutter/material.dart';
// import 'package:t_store/utils/constants/colors.dart';
// import 'package:t_store/utils/constants/sizes.dart';
// import 'package:t_store/utils/device/device_utility.dart';
// import 'package:t_store/utils/helpers/helper_functions.dart';

// class TSearchContainer extends StatelessWidget {
//   const TSearchContainer({
//     super.key,
//     required this.text,
//     this.icon,
//     this.showBackground = true,
//     this.showBorder = true,
//     this.onTab,
//     required Null Function() onTap,
//   });

//   final String text;
//   final IconData? icon;
//   final bool showBackground, showBorder;
//   final VoidCallback? onTab;

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return GestureDetector(
//       onTap: onTab,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
//         child: Container(
//           width: TDeviceUtils.getScreenWidth(context),
//           padding: const EdgeInsets.all(TSizes.md),
//           decoration: BoxDecoration(
//             color: showBackground
//                 ? dark
//                     ? TColors.black
//                     : TColors.light
//                 : Colors.transparent,
//             borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
//             border: showBorder ? Border.all(color: TColors.grey) : null,
//           ),
//           child: Row(
//             children: [
//               Icon(icon, color: TColors.darkerGrey),
//               const SizedBox(width: TSizes.spaceBtwItems),
//               Text(text, style: Theme.of(context).textTheme.bodySmall),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
