import 'package:fitness_app/pages/meal_planner/find_something_to_eat.dart';
import 'package:fitness_app/pages/meal_planner/landing_page.dart';
import 'package:fitness_app/pages/meal_planner/meal_schedule.dart';
import 'package:fitness_app/pages/meal_planner/reciepe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: FindSomethingToEat(),
      home: ReciepePage(),
      // home: landing_page(),
      //home: mealSchedule(),
    );
  }
}
