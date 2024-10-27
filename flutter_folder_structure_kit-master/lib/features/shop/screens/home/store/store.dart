import 'package:flutter/material.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/common/text/t_brand_title_with_verified_icon.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/appbar/tabbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/products/products_cards/rounded_container.dart';
import 'package:t_store/features/shop/screens/home/store/widgets/category_tab.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: TSizes.spaceBtwItems),
                      TSearchContainer(text: 'Search in Store', onTab: () {}),
                      SizedBox(height: TSizes.spaceBtwSections),
                      TSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: TRoundedContainer(
                              padding: const EdgeInsets.all(TSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              width: 100,
                              height: 100,
                              radius: 100,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: TCircularImage(
                                      isNetworkImage: false,
                                      image: TImages.shoeIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor:
                                          THelperFunctions.isDarkMode(context)
                                              ? TColors.white
                                              : TColors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                      width: TSizes.spaceBtwItems / 2),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TBrandTitleWithVerifiedIcon(
                                          title: 'Nike',
                                          brandTextSize: TextSizes.large,
                                        ),
                                        Text(
                                          '256 products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                bottom: const TTabBar(tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ]),
              ),
            ];
          },
          body: const TabBarView(children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
