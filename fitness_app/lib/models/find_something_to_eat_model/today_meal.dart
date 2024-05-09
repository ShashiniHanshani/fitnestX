class TodayMealModel {
  String iconPath;
  String name;
  String time;

  TodayMealModel({
    required this.iconPath,
    required this.name,
    required this.time,
  });

  static List<TodayMealModel> getTodaymeal() {
    List<TodayMealModel> todayMeal = [];

    todayMeal.add(
      TodayMealModel(
        iconPath: "assets/icons/salmon.png",
        name: "Salmon Nigiri",
        time: "7am",
      ),
    );
    todayMeal.add(
      TodayMealModel(
        iconPath: "assets/icons/lowfatMilk.png",
        name: "Low Fat Milk",
        time: "8am",
      ),
    );
    return todayMeal;
  }
}
