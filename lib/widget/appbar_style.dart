import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:state_management/controller/product_controller.dart';

import '../view/cart_screen.dart';

Widget appBarStyle() {
  final productController = Get.put(ProductController());
  return ListTile(
    title: const Wrap(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blue,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your location',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Jakarta',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    ),
    trailing: GestureDetector(
      onTap: () => Get.to(CartScreen()),
      child: badges.Badge(
        badgeContent: Obx(() => Text(
              productController.listProduct.length.toString(),
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
            )),
        child: const Icon(
          Icons.shopping_cart,
          size: 26,
        ),
      ),
    ),
  );
}
