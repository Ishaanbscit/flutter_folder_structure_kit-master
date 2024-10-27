// // Navigation Menu with Bottom Navigation Bar
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:t_store/features/shop/screens/home/home.dart';
// //import 'package:t_store/features/shop/screens/home/stores/home.dart';
// //import 'package:t_store/navigation_menu.dart';

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

// class NavigationController extends GetxController {
//   final Rx<int> selectedIndex = 0.obs;

//   final screens = [
//     const HomeScreen(),
//     Container(color: Colors.purple), // Add actual screen for Store
//     Container(color: Colors.orange), // Add actual screen for Wishlist
//     Container(color: Colors.blue), // Add actual screen for Profile
//   ].obs;
// }
