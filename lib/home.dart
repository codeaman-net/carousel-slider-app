import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static final List<String> images = [
    "assets/images/s1.jpg",
    "assets/images/s2.jpg",
    "assets/images/s3.jpg",
    "assets/images/s4.jpg",
    "assets/images/s5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 450,
            width: MediaQuery.of(context).size.width,
            child: FanCarouselImageSlider(
                indicatorActiveColor: Colors.indigo,
                indicatorDeactiveColor: Colors.grey,
                //showIndicator: false,
                sliderHeight: 430,
                autoPlay: true,
                imagesLink: images,
                isAssets: true),
          )
        ],
      ),
    );
  }
}
