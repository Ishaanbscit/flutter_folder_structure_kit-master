import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Example category to pass to CategoriesScreen
    final Map<String, String> initialCategory = {
      "title": "Shoes",
      "image": "assets/shoe_icon.png", // Example image path
    };

    return GetMaterialApp(
      // Use GetMaterialApp for GetX navigation
      debugShowCheckedModeBanner: false,
      title: 'Categories App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoriesScreen(category: initialCategory),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  final Map<String, String> category;

  const CategoriesScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Example categories
    final List<String> categories = [
      'Shoes',
      'Clothing',
      'Accessories',
      'Electronics',
      'Books',
      'Home & Garden',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(categories[index]),
                onTap: () {
                  // Navigate to the selected category's details
                  Get.to(
                      () => CategoryDetailScreen(category: categories[index]));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

// Category Detail Screen
class CategoryDetailScreen extends StatelessWidget {
  final String category;

  const CategoryDetailScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Center(
        child: Text('Details for $category'),
      ),
    );
  }
}
