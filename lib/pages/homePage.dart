import 'package:flutter/material.dart';
import '/util/product.dart';

class HomePage extends StatelessWidget {
    AddtoCart() {
      AlertDialog(
        title: Text("Successfully added!"),
        content: (Text("Check your cart")),
      );
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Genesis"),
            SizedBox(
              width: 200,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            SizedBox(width: 8),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Product(
            productName: 'Hoodie',
            onPressed: AddtoCart(),
          ),
          SizedBox(
            height: 50,
          ),
          Product(
            productName: 'Shirt',
            onPressed: AddtoCart(),
          ),
        ],
      ),
    );
  }
}
