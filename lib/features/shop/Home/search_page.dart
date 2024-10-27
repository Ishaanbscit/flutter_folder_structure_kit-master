import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Products'),
        backgroundColor: Colors.blue, // Adjust according to your theme
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search for products',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Handle search action
                    final logger = Logger();
                    logger.i('Search button pressed');
                    // Implement your search logic here
                  },
                ),
              ),
              onSubmitted: (String query) {
                // Handle search on submission
                final logger = Logger();
                logger.i('Searching for: $query');
                // You can implement your search logic here
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Placeholder for search results
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons
                        .shopping_cart), // Replace with actual product image if needed
                    title: Text(
                        'Product ${index + 1}'), // Replace with actual product name
                    onTap: () {
                      // Handle product selection
                      final logger = Logger();
                      logger.i('Tapped on Product ${index + 1}');
                      // Navigate to product details or another action
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
