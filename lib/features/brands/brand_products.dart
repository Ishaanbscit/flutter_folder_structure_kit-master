import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/card/bard_card.dart';
import 'package:t_store/features/sortable/sortable_products.dart';

import '../../utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppbar(
          title: Text('Nike'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///Brand Detail
                ///

                TBrandCard(showBorder: true),
                SizedBox(height: TSizes.spaceBtwSections),

                TSortableProducts(),
              ],
            ),
          ),
        ));
  }
}
