import 'package:flutter/material.dart';
import 'package:state_management/model/category_model.dart';
import 'package:state_management/model/product_model.dart';

import '../widget/appbar_style.dart';
import '../widget/category_widget.dart';
import '../widget/pop_up_buttom.dart';
import '../widget/popular_rent.dart';
import '../widget/search_style.dart';
import '../widget/slider_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            appBarStyle(),
            searchStyle(),
            const SizedBox(
              height: 20,
            ),
            const SliderWidget(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Top Brands',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    popUpButtom(context);
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < listCategory.length; i++)
                    CategoryWidget(
                      model: listCategory[i],
                    )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Most Popular Rent',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < listProduct.length; i++)
                    PopularRent(
                      model: listProduct[i],
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
