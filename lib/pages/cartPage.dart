import 'package:flutter/material.dart';
import 'package:kode/models/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: value.cartitems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        //Image
                        leading: Image.asset(value.cartitems[index][2]),
                        //ItemName
                        title: Text(
                          value.cartitems[index][0],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        //ItemPrice
                        subtitle: Text(value.cartitems[index][1]),
                        trailing: IconButton(
                            onPressed: () =>
                                Provider.of<CartModel>(context, listen: false)
                                    .removeFromCart(index),
                            icon: const Icon(Icons.cancel)),
                      ),
                    ),
                  );
                },
              )),
            ],
          );
        },
      ),
    );
  }
}
