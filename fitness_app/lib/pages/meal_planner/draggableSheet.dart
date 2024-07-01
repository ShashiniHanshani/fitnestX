import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggableSheet extends StatefulWidget {
  const DraggableSheet({super.key});

  @override
  State<DraggableSheet> createState() => _DraggableSheetState();
}

class _DraggableSheetState extends State<DraggableSheet> {
  final _sheet = GlobalKey();
  final _controller = DraggableScrollableController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DraggableScrollableSheet(
        key: _sheet,
        initialChildSize: 0.72,
        maxChildSize: 0.72,
        minChildSize: 0.72,
        expand: false,
        snap: true,
        //snapSizes: const [0.5],
        controller: _controller,
        builder: (BuildContext context, ScrollController scrollController) {
          return DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Blueberry Pancake",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.favorite_border_outlined),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "by ",
                            ),
                            Text(
                              "James Ruth",
                              style: TextStyle(color: Color(0xFF92A3FD)),
                            ),
                          ],
                        ),
                        Text(
                          "Nutrition",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 40,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              _calContainer(
                                icon: Image.asset(
                                  "assets/icons/calories_icon.png",
                                ),
                                calString: "180kCal",
                              ),
                              _calContainer(
                                icon: Image.asset(
                                  "assets/icons/calories_icon.png",
                                ),
                                calString: "180kCal",
                              ),
                              _calContainer(
                                icon: Image.asset(
                                  "assets/icons/calories_icon.png",
                                ),
                                calString: "180kCal",
                              ),
                              _calContainer(
                                icon: Image.asset(
                                  "assets/icons/calories_icon.png",
                                ),
                                calString: "180kCal",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget _calContainer({required Image icon, required String calString}) {
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
        color: Color(0xFFe9f1ff),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            Text(
              calString,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
