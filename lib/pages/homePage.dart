import 'package:flutter/material.dart';
import 'package:kode/models/cart_model.dart';
import 'package:kode/pages/cartPage.dart';
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
              Text("Genesis"),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                  SizedBox(width: 8),
                  IconButton(
                      onPressed: () =>
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return CartPage();
                            },
                          )),
                      icon: Icon(Icons.shopping_cart))
                ],
              )
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.red,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          )),
          child: Icon(Icons.shopping_bag),
        ),
        body: Column(
          children: [
            SizedBox(),
            Expanded(child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
