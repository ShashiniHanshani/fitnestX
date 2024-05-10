import 'dart:ui';

class SomethingToEatModel {
  String mealType;
  String foodCollection;
  String iconPath;
  Color boxColor;

  SomethingToEatModel({
    required this.boxColor,
    required this.foodCollection,
    required this.iconPath,
    required this.mealType,
  });

  static List<SomethingToEatModel> getSomethingToEat() {
    List<SomethingToEatModel> somethingToEat = [];
    somethingToEat.add(
      SomethingToEatModel(
          iconPath: "assets/icons/breakfast.png",
          boxColor: Color(0xff92A3FD),
          foodCollection: "120+",
          mealType: "Breakfast"),
    );
    somethingToEat.add(
      SomethingToEatModel(
          iconPath: "assets/icons/lunch.png",
          boxColor: Color(0xffEEA4CE),
          foodCollection: "130+",
          mealType: "Lunch"),
    );
    somethingToEat.add(
      SomethingToEatModel(
          iconPath: "assets/icons/breakfast.png",
          boxColor: Color(0xff92A3FD),
          foodCollection: "120+",
          mealType: "Dinner"),
    );

    return somethingToEat;
  }
}
