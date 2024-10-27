// // Section Heading Widget
// import 'package:flutter/material.dart';

// class TSectionheading extends StatelessWidget {
//   const TSectionheading({
//     super.key,
//     this.textColor,
//     this.showActionButton = true,
//     required this.title,
//     this.buttonTitle = 'View all',
//     this.onPressed,
//   });

//   final Color? textColor;
//   final bool showActionButton;
//   final String title, buttonTitle;
//   final void Function()? onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment:
//           MainAxisAlignment.spaceBetween, // Aligns items properly
//       children: [
//         // Title
//         Text(
//           title,
//           style: Theme.of(context)
//               .textTheme
//               .headlineSmall!
//               .apply(color: textColor),
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),

//         // Action Button (if enabled)
//         if (showActionButton)
//           TextButton(
//             onPressed: onPressed,
//             child: Text(buttonTitle),
//           ),
//       ],
//     );
//   }
// }
