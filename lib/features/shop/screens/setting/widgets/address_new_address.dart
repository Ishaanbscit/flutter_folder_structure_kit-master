import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AddressNewAddress extends StatelessWidget {
  const AddressNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(showBackArrow: true, title: Text('Add New Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: 'Name'),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: 'Phone Number'),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: 'Street'),
                    )),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.code1),
                          labelText: 'Postal code'),
                    )),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.building),
                            labelText: 'city'),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.activity),
                            labelText: 'state'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global), labelText: 'country'),
                ),
                const SizedBox(
                  height: TSizes.defaultSpace,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: Text('save')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
