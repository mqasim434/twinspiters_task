import 'package:flutter/material.dart';
import 'package:twinspiders_task/components/horizontal_product.dart';
import 'package:twinspiders_task/components/vertical_product.dart';
import 'package:twinspiders_task/res/products.dart';
import 'package:twinspiders_task/screens/cart_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 5),
            child: Text(
              'Products List 1',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: Products.productsList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return HorizontalProduct(
                    title: Products.productsList[index],
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 5),
            child: Text(
              'Products List 2',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: Products.productsList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return HorizontalProduct(
                    title: Products.productsList[index],
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 5),
            child: Text(
              'Products List 3',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: Products.productsList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return VerticalProduct(
                    title: Products.productsList[index],
                    onPress: () {
                      Products.carProducts.add(Products.productsList[index]);
                    },
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
