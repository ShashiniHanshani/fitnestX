import 'package:fitness_app/pages/meal_planner/draggableSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReciepePage extends StatefulWidget {
  const ReciepePage({super.key});

  @override
  State<ReciepePage> createState() => _ReciepePageState();
}

class _ReciepePageState extends State<ReciepePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff9DCEFF), Color(0xff92A3FD)],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  _Column(),
                  Positioned(
                    left: 100,
                    top: 100,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          width: 250,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Color(0xFFb4c2fe).withOpacity(0.85),
                              shape: BoxShape.circle),
                        ),
                        Image.asset(
                          "assets/icons/cake.png",
                          width: 700,
                          height: 350,
                        ),
                        SizedBox(
                          height: size.height,
                          child: DraggableSheet(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _Column() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: 30,
          height: 30,
          margin: const EdgeInsets.fromLTRB(20, 50, 0, 20),
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(0, 50, 20, 20),
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Image(image: AssetImage("assets/icons/dot.png")),
          ),
        ),
      ],
    );
  }
}
