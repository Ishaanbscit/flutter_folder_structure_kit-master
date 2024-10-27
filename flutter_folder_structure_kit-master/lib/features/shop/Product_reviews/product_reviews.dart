import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppbar(
        title: Text('Reviews and Rationgs'),
      ),
      body: SingleChildScrollView(),
    );
  }
}
