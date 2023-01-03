import 'package:flutter/material.dart';
import 'package:home_work/home_work.dart';

class BoxworkWidget extends StatefulWidget {
  const BoxworkWidget({super.key});

  @override
  State<BoxworkWidget> createState() => _BoxworkWidgetState();
}

class _BoxworkWidgetState extends State<BoxworkWidget> {
  @override
  Widget build(BuildContext context) {
    BoxWork boxWork1 = BoxWork();
    boxWork1.name = 'Schedule';
    boxWork1.workIcon = Icons.schedule;
    boxWork1.color = Colors.indigo;

    BoxWork boxWork2 = BoxWork();
    boxWork2.name = 'Your Activity';
    boxWork2.workIcon = Icons.pedal_bike;
    boxWork2.color = Colors.red;

    BoxWork boxWork3 = BoxWork();
    boxWork3.name = 'Your Work';
    boxWork3.workIcon = Icons.work;
    boxWork3.color = Colors.orange;

    BoxWork boxWork4 = BoxWork();
    boxWork4.name = 'Diary';
    boxWork4.workIcon = Icons.book;
    boxWork4.color = Colors.black;

    //   BoxWork _boxWork5 = BoxWork();
    //   _boxWork1.name = 'Go Ride';
    //   _boxWork1.workIcon = Icons.pedal_bike;
    //   _boxWork1.color = Colors.orange;

    //   BoxWork _boxWork6 = BoxWork();
    //   _boxWork1.name = 'Go Ride';
    //   _boxWork1.workIcon = Icons.pedal_bike;
    //   _boxWork1.color = Colors.orange;

    //  BoxWork _boxWork7 = BoxWork();
    //   _boxWork1.name = 'Go Ride';
    //   _boxWork1.workIcon = Icons.pedal_bike;
    //   _boxWork1.color = Colors.orange;

    //  BoxWork _boxWork8 = BoxWork();
    //   _boxWork1.name = 'Go Ride';
    //   _boxWork1.workIcon = Icons.pedal_bike;
    //   _boxWork1.color = Colors.orange;

    List<BoxWork> allBoxWork = [];
    allBoxWork.add(boxWork1);
    allBoxWork.add(boxWork2);
    allBoxWork.add(boxWork3);
    allBoxWork.add(boxWork4);

    return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 1, crossAxisSpacing: 1),
        itemCount: allBoxWork.length,
        itemBuilder: ((context, index) {
          var inBoxWork = allBoxWork[index];

          return GridTile(
            child: Card(
              shadowColor: Colors.indigo,
              elevation: 5,
              child: Container(
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: AlignmentDirectional.center,
                  margin: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Column(children: [
                    Icon(
                      inBoxWork.workIcon,
                      color: inBoxWork.color,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      inBoxWork.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ])),
            ),
          );
        }));
  }
}
