import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:fitness_app/models/find_something_to_eat_model/today_meal.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class mealSchedule extends StatefulWidget {
  const mealSchedule({super.key});

  @override
  State<mealSchedule> createState() => _mealScheduleState();
}

class _mealScheduleState extends State<mealSchedule> {
  List<TodayMealModel> todayMeal = [];

  void _getInfo() {
    todayMeal = TodayMealModel.getTodaymeal();
  }

  @override
  Widget build(BuildContext context) {
    _getInfo();
    DateTime now = DateTime.now();
    String formattedDate = "${now.month} ${now.year.toString()}";
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //calender
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                size: 20,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Text(
                  (DateFormat.yMMMM().format(DateTime.now())),
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: DatePicker(
              DateTime.now(),
              height: 100,
              width: 80,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Breakfast",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "2 meals | 230 Calories",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: ListView.separated(
                    itemCount: todayMeal.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 80,
                        child: Row(
                          children: [
                            Image.asset(todayMeal[index].iconPath),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
          //breakfast
          //lunch
          //snacks
          //Dinner
          //Today meal nutritions
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "Meal Schedule",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new_sharp,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 32,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Image(image: AssetImage("assets/icons/dot.png")),
          ),
        )
      ],
    );
  }
}
