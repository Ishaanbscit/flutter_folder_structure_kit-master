import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';

///import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/shop/check/billing_address_section.dart';
import 'package:t_store/features/shop/check/billing_amount_section.dart';
import 'package:t_store/features/shop/check/billing_payment_section.dart';
import 'package:t_store/features/shop/check/coupon_widget.dart';
import 'package:t_store/features/shop/screens/cart/cart_itemsma.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../success/success_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Items in cart
            const CartItems(showAddRemoveButtons: false),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Coupon code input
            TCoupnCode(dark: isDarkMode),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Billing sections container
            TRoundedContainer(
              showBorder: true,
              backgroundColor: isDarkMode ? TColors.black : TColors.white,
              child: Column(
                children: [
                  TBillingPaymentSection(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TBillingAmountSection(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TBillingAdressSection(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: _onCheckoutPressed,
          child: const Text('Checkout \$254.0'),
        ),
      ),
    );
  }

  void _onCheckoutPressed() {
    Get.to(() => SuccessScreen(
          image: TImages.successfulPaymentIcon,
          title: 'Payment Successful',
          subTitle: 'Your item will be shipped.',
          onPressed: () => Get.offAll(() => const NavigationMenu()),
        ));
  }
}
