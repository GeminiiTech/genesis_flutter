import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Product extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  void Function()? onpressed;

  Product(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red[200], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            //Image
            Image.asset(
              imagePath,
              height: 100,
            ),
            //ItemName
            Text(
              itemName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            //Itemprice + button
            Column(
              children: [
                GestureDetector(
                  onTap: onpressed,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 6.0, bottom: 6.0, left: 40.0, right: 40.0),
                      child: Text(
                        '\$' + itemPrice,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
