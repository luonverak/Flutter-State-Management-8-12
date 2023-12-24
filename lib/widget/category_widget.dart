import 'package:flutter/material.dart';
import 'package:state_management/model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.model});
  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(255, 216, 216, 216),
          ),
          image: DecorationImage(
            image: AssetImage(model.image),
          ),
        ),
      ),
    );
  }
}
