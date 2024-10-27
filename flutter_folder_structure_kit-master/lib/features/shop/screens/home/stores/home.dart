// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
// import 'package:t_store/utils/constants/colors.dart';
// import 'package:t_store/utils/constants/sizes.dart';
// import 'package:t_store/utils/device/device_utility.dart';
// import 'package:t_store/utils/helpers/helper_functions.dart';

// // Main Home Screen Widget
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(TDeviceUtils.getAppBarHeight()),
//         child: const THomeAppBar(),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             TPrimaryHeaderContainer(
//               child: Column(
//                 children: [
//                   const SizedBox(height: TSizes.spaceBtwSections),
//                   Text(
//                     'Home1',
//                     style: Theme.of(context).textTheme.labelMedium!.apply(
//                           color: TColors.grey,
//                         ),
//                   ),
//                   // Search bar
//                   TSearchContainer(
//                     text: 'Search in store',
//                     icon: Icons.search, // Ensure an icon is provided
//                     onTab: () {
//                       print("Search tapped!"); // Debug log
//                     },
//                   ),
//                   const SizedBox(height: TSizes.spaceBtwSections),
//                   // Categories Section
//                   Padding(
//                     padding: const EdgeInsets.only(left: TSizes.defaultSpace),
//                     child: Column(
//                       children: [
//                         TSectionheading(
//                           title: 'Popular Categories',
//                           showActionButton: false,
//                           textColor: Colors.white,
//                         ),
//                         const SizedBox(height: TSizes.spaceBtwItems),
//                         // Categories
//                         const THomeCategories(),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Home Categories Widget
// class THomeCategories extends StatelessWidget {
//   const THomeCategories({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 80,
//       child: ListView.builder(
//         shrinkWrap: true,
//         itemCount: 6,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (_, index) {
//           return TVerticalImageText(
//             image: 'assets/images/shoe_icon.png', // Update with correct path
//             title: 'Shoes',
//             onTab: () {
//               print("Shoe category tapped!"); // Debug log
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// // Vertical Image Text Widget
// class TVerticalImageText extends StatelessWidget {
//   const TVerticalImageText({
//     super.key,
//     required this.image,
//     required this.title,
//     this.textColor = TColors.white,
//     this.backgroundColor,
//     this.onTab,
//   });

//   final String image, title;
//   final Color textColor;
//   final Color? backgroundColor;
//   final void Function()? onTab;

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return GestureDetector(
//       onTap: onTab,
//       child: Padding(
//         padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
//         child: Column(
//           children: [
//             Container(
//               width: 56,
//               height: 56,
//               padding: const EdgeInsets.all(TSizes.sm),
//               decoration: BoxDecoration(
//                 color:
//                     backgroundColor ?? (dark ? TColors.black : TColors.white),
//                 borderRadius: BorderRadius.circular(100),
//               ),
//               child: Center(
//                 child: Image.asset(
//                   image,
//                   fit: BoxFit.cover,
//                   color: dark ? TColors.light : TColors.dark,
//                 ),
//               ),
//             ),
//             const SizedBox(height: TSizes.spaceBtwItems / 2),
//             SizedBox(
//               width: 55,
//               child: Text(
//                 title,
//                 style: Theme.of(context)
//                     .textTheme
//                     .labelMedium!
//                     .apply(color: textColor),
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Search Container Widget
// class TSearchContainer extends StatelessWidget {
//   const TSearchContainer({
//     super.key,
//     required this.text,
//     this.icon,
//     this.showBackground = true,
//     this.showBorder = true,
//     this.onTab,
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

// // Section Heading Widget
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
//       children: [
//         Text(
//           title,
//           style: Theme.of(context)
//               .textTheme
//               .headlineSmall!
//               .apply(color: textColor),
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),
//         Text(
//           'Home',
//           style: Theme.of(context).textTheme.labelMedium!.apply(
//                 color: TColors.grey,
//               ),
//         ),
//         if (showActionButton)
//           TextButton(onPressed: onPressed, child: Text(buttonTitle)),
//       ],
//     );
//   }
// }

// // Home App Bar Widget
// class THomeAppBar extends StatelessWidget {
//   const THomeAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Home',
//             style: Theme.of(context).textTheme.labelMedium!.apply(
//                   color: TColors.grey,
//                 ),
//           ),
//           Text(
//             'Welcome Back Friend',
//             style: Theme.of(context).textTheme.headlineSmall!.apply(
//                   color: const Color.fromARGB(255, 163, 51, 51),
//                 ),
//           ),
//         ],
//       ),
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.shopping_cart),
//           onPressed: () {
//             print("Cart tapped!"); // Debug log
//           },
//         ),
//       ],
//     );
//   }
// }

// // Main Application Entry Point
// void main() {
//   runApp(const MyApp());
// }

// // Main Application Widget
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Improved Navigation App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         useMaterial3: true,
//       ),
//       home: const NavigationMenu(),
//     );
//   }
// }

// // Navigation Menu with Bottom Navigation Bar
// class NavigationMenu extends StatelessWidget {
//   const NavigationMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(NavigationController());

//     return Scaffold(
//       body: Obx(
//         () => IndexedStack(
//           index: controller.selectedIndex.value,
//           children: controller.screens,
//         ),
//       ),
//       bottomNavigationBar: Obx(
//         () => NavigationBar(
//           height: 80,
//           elevation: 0,
//           selectedIndex: controller.selectedIndex.value,
//           onDestinationSelected: (index) =>
//               controller.selectedIndex.value = index,
//           destinations: const [
//             NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
//             NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
//             NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
//             NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Navigation Controller
// class NavigationController extends GetxController {
//   final Rx<int> selectedIndex = 0.obs;

//   final screens = [
//     const HomeScreen(),
//     Container(color: Colors.purple), // Add actual screen for Store
//     Container(color: Colors.orange), // Add actual screen for Wishlist
//     Container(color: Colors.blue), // Add actual screen for Profile
//   ].obs;
// }
