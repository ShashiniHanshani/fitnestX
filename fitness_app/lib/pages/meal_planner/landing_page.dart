import 'package:flutter/material.dart';

class landing_page extends StatefulWidget {
  const landing_page({super.key});

  @override
  State<landing_page> createState() => _landing_pageState();
}

class _landing_pageState extends State<landing_page> {
  @override
  Widget build(BuildContext context) {
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
          //Todays meal
          //find Something to eat
        ],
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
                height: 40,
                width: 120,
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
