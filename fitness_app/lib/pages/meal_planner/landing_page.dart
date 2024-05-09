import 'package:flutter/material.dart';

class landing_page extends StatefulWidget {
  const landing_page({super.key});

  @override
  State<landing_page> createState() => _landing_pageState();
}

class _landing_pageState extends State<landing_page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //app bar
      appBar: _appBar(),

      body: Column(
        children: [
          //meal nutritions
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: _mealNutritions(),
          ),
          //daily meal Schedule
          _dailyMealSchedule(size),

          //Todays meal
          //find Something to eat
        ],
      ),
    );
  }

  Padding _dailyMealSchedule(Size size) {
    return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 57,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xff92A3FD).withOpacity(0.2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Daily meal Schedule",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 100,
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff9DCEFF),
                        Color(0xff92A3FD),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      "Check",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }

  Column _mealNutritions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Meal Nutritions",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff9DCEFF),
                      Color(0xff92A3FD),
                    ],
                  ),
                ),
                child: Center(
                  child: DropdownButton<String>(
                    iconEnabledColor: Colors.white,
                    hint: Text(
                      "Weekly",
                      style: TextStyle(color: Colors.white),
                    ),
                    items: ['Weekly', 'Monthly', 'Yearly'].map((String value) {
                      return DropdownMenuItem(
                        alignment: Alignment.center,
                        value: value,
                        child: Text(
                          value,
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(
              "assets/icons/graph.png",
              height: 250,
              width: 350,
            )
          ],
        )
      ],
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Meal Planner",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.arrow_back_ios_new_sharp,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 32,
            alignment: Alignment.center,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image(image: AssetImage("assets/icons/dot.png")),
          ),
        )
      ],
    );
  }
}
