import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/router/routing_variables.dart';
import 'package:grocery_app/shared/Helpers/image_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splash1Page extends StatefulWidget {
  const Splash1Page({Key? key}) : super(key: key);

  @override
  State<Splash1Page> createState() => _Splash1PageState();
}

class _Splash1PageState extends State<Splash1Page> {
  List<String> carouselSvgs = ["welcome_1", "delivery_1", "best_grocery_1"];
  List<String> carouselLabels = [
    "Welcome to Application",
    "Get Fast Delivery Service",
    "Best Quality Grocery Door to Door",
  ];
  int currentCarouselIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: Column(children: [
              SizedBox(height: 64),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 533,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentCarouselIndex = index;
                    });
                  },
                ),
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        carouselLabels[index],
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 121),
                      Stack(
                        children: [
                          Container(
                            child: ImageHelper.getSvg(
                              carouselSvgs[index],
                              width: 360,
                              height: 317,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 122),
            ]),
          ),
          Positioned(
            bottom: 30,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Navigation.homePage);
                    },
                    child: Text('Skip'),
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: currentCarouselIndex,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
