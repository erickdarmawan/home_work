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
            CarouselWidget(),
            BoxworkWidget(),
          ],
        ),
      ),
    );
  }
}
