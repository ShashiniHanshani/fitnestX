import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  bool viewedSelected;
  Color boxColor;

  DietModel({
    required this.name,
    required this.calories,
    required this.duration,
    required this.iconPath,
    required this.level,
    required this.viewedSelected,
    required this.boxColor,
  });

  static List<DietModel> getModel() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: 'Pancake',
        iconPath: 'assets/icons/cake.png',
        level: 'Easy',
        duration: '20mins',
        calories: '230kCal',
        viewedSelected: true,
        boxColor: Color(0xffEEA4CE),
      ),
    );
    diets.add(
      DietModel(
        name: 'Canai Bread',
        iconPath: 'assets/icons/cake.png',
        level: 'Easy',
        duration: '30mins',
        calories: '250kCal',
        viewedSelected: false,
        boxColor: Color(0xff92A3FD),
      ),
    );
    diets.add(
      DietModel(
        name: 'Pancake',
        iconPath: 'assets/icons/cake.png',
        level: 'Easy',
        duration: '20mins',
        calories: '230kCal',
        viewedSelected: false,
        boxColor: Color(0xffEEA4CE),
      ),
    );

    return diets;
  }
}
