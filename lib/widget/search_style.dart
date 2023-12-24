import 'package:flutter/material.dart';

Widget searchStyle() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        width: 1,
        color: Colors.grey,
      ),
    ),
    child: const Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Icon(Icons.search),
        SizedBox(
          width: 10,
        ),
        Text(
          'Search vehicle...',
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 65, 65, 65),
          ),
        ),
      ],
    ),
  );
}
