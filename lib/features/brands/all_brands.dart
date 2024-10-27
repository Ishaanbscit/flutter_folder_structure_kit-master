import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/features/brands/brand_products.dart';
import 'package:t_store/features/shop/card/bard_card.dart';
//import 'package:t_store/features/sortable/sortable_products.dart';

import '../../utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        title: Text('Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSectionHeading(
                title: 'Brands',
                onPressed: () {},
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => TBrandCard(
                        showBorder: true,
                        onTab: () => Get.to(() => const BrandProducts()),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
