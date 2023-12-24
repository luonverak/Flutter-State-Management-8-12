import 'package:flutter/material.dart';
import 'package:state_management/model/product_model.dart';

class PopularRent extends StatelessWidget {
  const PopularRent({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: MediaQuery.sizeOf(context).width / 1.6,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(model.image),
          ),
        ),
      ),
    );
  }
}
