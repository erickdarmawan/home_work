import 'package:flutter/material.dart';
import 'package:home_work/home_work.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String?> imgList = [
    'https://www.retrogamer.net/wp-content/uploads/2014/05/DuckHunt-616x390.png',
    'http://retrogamermag.wpengine.com/wp-content/uploads/2014/05/SuperMarioBros-616x388.png',
    'https://www.retrogamer.net/wp-content/uploads/2014/05/MegaMan2-616x391.png',
    'https://www.retrogamer.net/wp-content/uploads/2014/05/Punchout-616x391.png',
    'http://www.retrogamer.net/wp-content/uploads/2014/05/Metroid.png',
    'https://www.retrogamer.net/wp-content/uploads/2014/05/legend-of-zelda-616x577.png'
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: false,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, carouselReason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: imgList
                  .map((item) => Container(
                        child: Image.network(
                          item!,
                          fit: BoxFit.fitWidth,
                        ),
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
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
            BoxworkWidget(),
          ],
        ),
      ),
    );
  }
}
