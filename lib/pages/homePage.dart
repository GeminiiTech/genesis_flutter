import 'package:flutter/material.dart';
import 'package:kode/models/cart_model.dart';
import 'package:kode/pages/cartPage.dart';
import 'package:kode/pages/profilePage.dart';
import 'package:kode/util/product.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Genesis"),
              Row(
                children: [
                  IconButton(
                      onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ProfilePage();
                          })),
                      icon: const Icon(Icons.person)),
                  const SizedBox(width: 8),
                  IconButton(
                      onPressed: () =>
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const CartPage();
                            },
                          )),
                      icon: const Icon(Icons.shopping_cart))
                ],
              )
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.red[300],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[300],
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const CartPage();
            },
          )),
          child: const Icon(Icons.shopping_cart),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: Text(
                "Shop",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.12),
                  itemCount: value.shopitems.length,
                  itemBuilder: (context, index) {
                    return Product(
                        itemName: value.shopitems[index][0],
                        itemPrice: value.shopitems[index][1],
                        imagePath: value.shopitems[index][2],
                        onpressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .addToCart(index);
                        });
                  },
                );
              },
            ))
          ],
        ));
  }
}
