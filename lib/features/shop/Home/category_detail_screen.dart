import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryDetailScreen extends StatelessWidget {
  final String category;

  const CategoryDetailScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Example items for the selected category
    final List<Map<String, dynamic>> items = [
      {
        'name': 'Stylish Sneakers',
        'price': 60.0,
        'description': 'Comfortable and stylish sneakers for everyday wear.',
        'image': 'assets/images/sneaker.png' // Use a valid image path
      },
      {
        'name': 'Classic T-Shirt',
        'price': 20.0,
        'description': 'A classic t-shirt for casual outings.',
        'image': 'assets/images/tshirt.png' // Use a valid image path
      },
      {
        'name': 'Designer Jeans',
        'price': 45.0,
        'description': 'High-quality jeans for a trendy look.',
        'image': 'assets/images/jeans.png' // Use a valid image path
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  // Item Image
                  Image.asset(
                    item['image'], // Replace with your image path
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['name'],
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          '\$${item['price']}',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.green),
                        ),
                        const SizedBox(height: 8.0),
                        Text(item['description']),
                        const SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () {
                            // Implement add to cart functionality here
                            Get.snackbar("Added to Cart",
                                "${item['name']} has been added to your cart.");
                          },
                          child: const Text("Add to Cart"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
