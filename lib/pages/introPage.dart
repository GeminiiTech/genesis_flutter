import 'package:flutter/material.dart';
import 'package:kode/pages/homePage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Image
            Image.asset("lib/images/hoodie.png"),
            //WelcomeText
            Text(
              "Welcome To Genesis",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            ),
            //GetStarted Text + Button
            GestureDetector(
              onTap: () =>
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                  return HomePage();
              },
              )),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
