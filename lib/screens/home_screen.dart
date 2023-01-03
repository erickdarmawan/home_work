import 'package:flutter/material.dart';
import 'package:home_work/home_work.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();
  final _workTextController = TextEditingController();
  String _workTitle = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                bool? isLogOut = await showDialog(
                    context: context,
                    builder: (builder) {
                      return AlertDialog(
                        title: Text('Log Out?'),
                        content: Text('Are you sure you want to log out?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: Text('No'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: Text('Yes'),
                          )
                        ],
                      );
                    });
              },
              icon: Icon(Icons.logout_outlined)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            CarouselWidget(),
            Divider(
              color: Colors.indigo,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
              child: BoxworkWidget(),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.blueGrey]),
                  border: Border.all(color: Colors.indigo),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _workTextController,
                            decoration: InputDecoration(
                                hintText: 'What is my work today?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(width: 0.5)),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 16)),
                            onChanged: (value) {
                              setState(() {
                                _workTitle = value;
                              });
                            },
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                          style:
                              ElevatedButton.styleFrom(shape: CircleBorder()),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
