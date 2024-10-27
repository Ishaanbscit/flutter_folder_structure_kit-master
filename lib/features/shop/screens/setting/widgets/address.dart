import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';

///import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';
import 'package:t_store/features/shop/screens/setting/widgets/address_new_address.dart';
import 'package:t_store/features/shop/screens/setting/widgets/single_address.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() => const AddressNewAddress()),
        child: Icon(Iconsax.add, color: TColors.white),
      ),
      appBar: TAppbar(
        showBackArrow: true,
        title:
            Text('Address', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddres: false),
              TSingleAddress(selectedAddres: false),
              TSingleAddress(selectedAddres: false),
              TSingleAddress(selectedAddres: false),
              TSingleAddress(selectedAddres: false),
              TSingleAddress(selectedAddres: true),
              TSingleAddress(selectedAddres: false),
              TSingleAddress(selectedAddres: false),
              TSingleAddress(selectedAddres: false),
              TSingleAddress(selectedAddres: false),
              TSingleAddress(selectedAddres: false),
              TSingleAddress(selectedAddres: false),
            ],
          ),
        ),
      ),
    );
  }
}
