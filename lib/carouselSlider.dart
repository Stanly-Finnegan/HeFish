import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carouselSlider extends StatefulWidget {
  const carouselSlider({super.key});

  @override
  State<carouselSlider> createState() => _carouselSliderState();
}

class _carouselSliderState extends State<carouselSlider> {
  @override
  int _current = 0;

  List<Widget> imglst = [
    Image.asset("assets/NemoHomePage.jpg"),
    Image.asset("assets/DoriHomePage.jpg"),
    Image.asset("assets/IkanHomePage.jpg")
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CarouselSlider(
              // items: imglst.map((lst) {
              //   return Image.asset(
              //     "${lst}",
              //   );
              // }).toList()
              //

              items: [
                Image.asset(
                  "assets/NemoHomepage.jpg",
                ),
                Image.asset(
                  "assets/DoriHomePage.jpg",
                ),
                Image.asset(
                  "assets/IkanHomePage.jpg",
                )
              ],
              options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  enlargeCenterPage: true,
                  aspectRatio: 1,
                  viewportFraction: 0.7,
                  // padEnds: false,
                  onPageChanged: ((index, reason) {
                    setState(() {
                      _current = index;
                    });
                  })),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imglst.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => CarouselController().animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
