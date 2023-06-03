import 'package:flutter/material.dart';
// import 'package:material_icons/material_icons.dart';

class Product extends StatelessWidget {
  String productName;
  void Function()? onPressed;

  Product({super.key, required this.productName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 15),
      child: Row(
        children: [
          Column(children: [
            Container(
              width: 180.0,
              height: 180.0,
              alignment: Alignment.center,
              child: const SizedBox(
                width: 180,
                height: 160,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Image(image: AssetImage("assets/images/hoodie.jpg")),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 180.0,
                height: 40.0,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Add to cart',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 40),
                    IconButton(
                      icon: Icon(Icons.shopping_cart),
                      color: Colors.white,
                      onPressed: () {
                        onPressed;
                      },
                    ),
                  ],
                ),
              ),
            ),

            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(primary: Colors.red),
            //     onPressed: () {},
            //     child: Row(
            //       children: const [
            //         Text('Add to cart'),
            //         SizedBox(width: 9),
            //         Icon(Icons.shopping_cart),
            //       ],
            //     ))
          ]),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Container(
                width: 180.0,
                height: 180.0,
                // color: Colors.red,
                alignment: Alignment.center,
                child: const SizedBox(
                  width: 180,
                  height: 160,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Image(image: AssetImage("assets/images/hoodie.jpg")),
                  ),
                ),
              ),
              Container(
                width: 180.0,
                height: 40.0,
                // color: Colors.red,
                decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove),
                      color: Colors.red,
                    ),
                    SizedBox(width: 30),
                    Text(
                      "5",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 40),
                    IconButton(
                      onPressed: () {
                        onPressed;
                      },
                      icon: Icon(Icons.add),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              // ElevatedButconton(
              //     style: ElevatedButton.styleFrom(primary: Colors.red),
              //     onPressed: () {},
              //     child: Row(
              //       children: [
              //         IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              //         SizedBox(width: 8),
              //         Text("1"),
              //         SizedBox(width: 8),
              //         IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              //       ],
              //     ))
            ],
          ),
        ],
      ),
    );
  }
}
