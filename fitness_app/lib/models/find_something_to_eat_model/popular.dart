class PopularModel {
  String iconPath;
  String name;
  String level;
  String duration;
  String calories;
  bool boxIsSelected;

  PopularModel(
      {required this.iconPath,
      required this.name,
      required this.level,
      required this.duration,
      required this.calories,
      required this.boxIsSelected});

  static List<PopularModel> getPopular() {
    List<PopularModel> popular = [];

    popular.add(
      PopularModel(
          iconPath: "assets/icons/cake.png",
          name: "Pancake",
          level: "Medium",
          duration: "30 min",
          calories: "230kCal",
          boxIsSelected: true),
    );
    popular.add(
      PopularModel(
          iconPath: "assets/icons/cake.png",
          name: "Blueberry Pancake",
          level: "Medium",
          duration: "30 min",
          calories: "230kCal",
          boxIsSelected: false),
    );
    popular.add(
      PopularModel(
          iconPath: "assets/icons/cake.png",
          name: "Blueberry Pancake",
          level: "Medium",
          duration: "30 min",
          calories: "230kCal",
          boxIsSelected: false),
    );
    popular.add(
      PopularModel(
          iconPath: "assets/icons/cake.png",
          name: "Blueberry Pancake",
          level: "Medium",
          duration: "30 min",
          calories: "230kCal",
          boxIsSelected: false),
    );
    return popular;
  }
}
