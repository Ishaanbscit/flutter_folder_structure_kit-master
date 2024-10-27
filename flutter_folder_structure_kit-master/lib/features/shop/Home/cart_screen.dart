import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example cart items
    final List<Map<String, dynamic>> cartItems = [
      {'name': 'Shoes', 'price': 50.0},
      {'name': 'T-Shirt', 'price': 20.0},
      {'name': 'Jeans', 'price': 40.0},
    ];

    // Calculate total price
    final double totalPrice = cartItems.fold(
      0.0, // Use 0.0 to indicate a double type
      (sum, item) => sum + (item['price'] as double),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cart Items List
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text(item['name']),
                      trailing: Text('\$${item['price']}'),
                    ),
                  );
                },
              ),
            ),
            // Total Price
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Total: \$${totalPrice.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            // Checkout Button
            ElevatedButton(
              onPressed: () {
                // Implement checkout logic here
                Get.snackbar("Checkout", "Proceeding to checkout");
              },
              child: const Text("Proceed to Checkout"),
            ),
          ],
        ),
      ),
    );
  }
}
