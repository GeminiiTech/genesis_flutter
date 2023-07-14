import 'package:flutter/material.dart';
import 'package:kode/models/cart_model.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage("lib/images/hoodie.png"),
              radius: 80,
              backgroundColor: Colors.red[50],
            ),
            SizedBox(
              height: 40,
            ),
            Consumer<CartModel>(
              builder: (context, value, child) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: value.profilelist.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text(value.profilelist[index][0],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                        title: Text(value.profilelist[index][1],
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20)),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
