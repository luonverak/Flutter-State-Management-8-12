import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/model/product_model.dart';

import '../controller/product_controller.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.model});
  final ProductModel model;
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          model.name,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await productController
                  .addCart(model)
                  .whenComplete(() => Get.snackbar('Success', 'Item add'));
            },
            icon: const Icon(
              Icons.shopping_cart,
              size: 26,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.asset(model.image),
              ),
              Text(
                '\$ ${model.price}',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
