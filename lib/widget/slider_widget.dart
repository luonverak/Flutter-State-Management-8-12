import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue,
          ),
        )
      ],
      options: CarouselOptions(
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 7),
        autoPlayAnimationDuration: const Duration(seconds: 3),
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
