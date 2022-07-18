import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int activeIndex = 0;
  final List<String> imgList = [
    'assets/images/con1.png',
    'assets/images/con2.png',
    'assets/images/con3.png',
    'assets/images/con4.png',
    'assets/images/con5.png',
    'assets/images/con6.png',
    'assets/images/con7.png',
    'assets/images/con8.png',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  //color: Colors.red,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      //aspectRatio: 18/8,
                      pageSnapping: false,
                      enlargeCenterPage: false,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                    ),
                    itemCount: imgList.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        //width: double.infinity,
                        child: Center(
                          child: Image.asset(
                            imgList[index],
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 10,
                  child: Center(
                    child: AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: imgList.length,
                      //effect:  WormEffect(),
                      effect: JumpingDotEffect(
                        dotHeight: 16,
                        dotWidth: 16,
                        jumpScale: .7,
                        verticalOffset: 15,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('คอนเสิร์ต'),
                Text('ดูทั้งหมด'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
