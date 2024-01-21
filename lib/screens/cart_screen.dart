import 'package:flutter/material.dart';
import 'package:twinspiders_task/res/products.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Cart'),
            centerTitle: true,
          ),
          body: Products.carProducts.isEmpty
              ? const Center(
                  child: Text('No Products Yet!'),
                )
              : ListView.builder(
                  itemCount: Products.carProducts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                              )
                            ]),
                        child: ListTile(
                          title: Text(
                            Products.carProducts[index],
                          ),
                        ),
                      ),
                    );
                  })),
    );
  }
}
