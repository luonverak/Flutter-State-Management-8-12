import 'package:flutter/material.dart';

Widget appBarStyle() {
  return const ListTile(
    title: Text(
      'Your location',
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
    subtitle: Wrap(
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
    trailing: CircleAvatar(
      radius: 25,
      backgroundColor: Colors.blue,
    ),
  );
}
