import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  List<String> productName = [
    'Mango',
    'Banana',
    'Grapes',
    'Orange',
    'Cherry',
    'Peach',
    'Mix fruit biscket'
  ];
  List<String> productUnit = [
    'kg',
    'Dozen',
    'Kg',
    'Dozen',
    'kg',
    'Kg',
    'kg',
  ];
  List<String> productImage = [
    "assets/images/mango.jpg",
    "assets/images/banana.png",
    "assets/images/grapes_f.jpg",
    "assets/images/orange.jpg",
    "assets/images/cheery.jpg",
    "assets/images/peche.jpg",
    "assets/images/fruite basket.jpg"
  ];
  List<int> productPrice = [30, 50, 60, 70, 80, 90, 80];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Product List'),
          centerTitle: true,
          actions: const [
            badges.Badge(
              badgeContent: Text(
                '0',
                style: TextStyle(color: Colors.white),
              ),
              badgeAnimation: badges.BadgeAnimation.fade(
                  animationDuration: Duration(milliseconds: 100)),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: productName.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(productImage[index]),
                            ),
                            Text(productName[index])
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
