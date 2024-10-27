/*import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/setting_menu_title.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/layouts/user_profile_title.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';*/
/*
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppbar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  TUserProfileTitle(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            // Additional sections
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Section title
                  const TSectionHeading(
                    title: 'Account Setting',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  // Account setting menu items
                  TSettingMenutTitle(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  TSettingMenutTitle(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add or remove products and move to checkout',
                    onTap: () {},
                  ),
                  TSettingMenutTitle(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and completed Orders',
                    onTap: () {},
                  ),
                  TSettingMenutTitle(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Manage your bank details',
                    onTap: () {},
                  ),
                  TSettingMenutTitle(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all discount coupons',
                    onTap: () {},
                  ),
                  TSettingMenutTitle(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Manage notifications and settings',
                    onTap: () {},
                  ),
                  TSettingMenutTitle(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connectivity',
                    onTap: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // App Setting Section
                  const TSectionHeading(
                    title: 'App Setting',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSettingMenutTitle(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload data to your Firebase cloud',
                    onTap: () {},
                  ),
                  TSettingMenutTitle(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Enable location-based recommendations',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  TSettingMenutTitle(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Enable safe mode for content',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  TSettingMenutTitle(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // Log Out Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Implement log out functionality
                        Get.defaultDialog(
                          title: "Log Out",
                          middleText: "Are you sure you want to log out?",
                          confirm: ElevatedButton(
                            onPressed: () {
                              // Add actual log-out logic here
                              Get.back(); // Close dialog
                              Get.offAllNamed(
                                  '/login'); // Navigate to login screen
                            },
                            child: const Text('Yes'),
                          ),
                          cancel: TextButton(
                            onPressed: () {
                              Get.back(); // Close dialog
                            },
                            child: const Text('No'),
                          ),
                        );
                      },
                      icon: const Icon(Iconsax.logout),
                      label: const Text('Log Out'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            TColors.primary, // Use primary color for the button
                        padding: const EdgeInsets.all(16),
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/setting_menu_title.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/layouts/user_profile_title.dart';
import 'package:t_store/features/authentication/screen/Widgets/widgets/profile.dart';
import 'package:t_store/features/shop/order/order_screen.dart';
import 'package:t_store/features/shop/screens/setting/widgets/address.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppbar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  //const SizedBox(height: TSizes.spaceBtwItems),
                  TUserProfileTitle(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            // Additional sections
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(
                    title: 'Account Setting',
                    showActionButton: false,
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TSettingMenuTitle(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add or remove products and move to checkout',
                    onTap: () {},
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Manage your bank details',
                    onTap: () {},
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all discount coupons',
                    onTap: () {},
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Manage notifications and settings',
                    onTap: () {},
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connectivity',
                    onTap: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // App Setting Section
                  TSectionHeading(
                    title: 'App Setting',
                    showActionButton: false,
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TSettingMenuTitle(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload data to your Firebase cloud',
                    onTap: () {},
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Enable location-based recommendations',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Enable safe mode for content',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  TSettingMenuTitle(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Log Out Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Get.defaultDialog(
                          title: "Log Out",
                          middleText: "Are you sure you want to log out?",
                          confirm: ElevatedButton(
                            onPressed: () {
                              Get.back();
                              Get.offAllNamed('/login');
                            },
                            child: const Text('Yes'),
                          ),
                          cancel: TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text('No'),
                          ),
                        );
                      },
                      icon: const Icon(Iconsax.logout),
                      label: const Text('Log Out'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: TColors.primary,
                        padding: const EdgeInsets.all(16),
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
