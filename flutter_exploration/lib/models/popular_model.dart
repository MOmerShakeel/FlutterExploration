class PopularModel {
  String name;
  String imgPath;
  String difficultyLevel;
  String calorieCount;
  String timeDuration;
  bool isSelected;

  PopularModel(
      {required this.name,
      required this.imgPath,
      required this.difficultyLevel,
      required this.calorieCount,
      required this.timeDuration,
      required this.isSelected});

  static List<PopularModel> getPopular() {
    List<PopularModel> popular = [];

    popular.add(PopularModel(
        name: "Ichiraku Ramen",
        imgPath: "assets/icons/ramenicon.svg",
        difficultyLevel: "Easy",
        calorieCount: "250kcal",
        timeDuration: "15min",
        isSelected: true));

    popular.add(PopularModel(
        name: "Colored Dumplings",
        imgPath: "assets/icons/dumplingicon.svg",
        difficultyLevel: "Hard",
        calorieCount: "160kcal",
        timeDuration: "10min",
        isSelected: true));

    popular.add(PopularModel(
        name: "Corn Soup",
        imgPath: "assets/icons/soupicon.svg",
        difficultyLevel: "Medium",
        calorieCount: "120kcal",
        timeDuration: "45min",
        isSelected: true));

    popular.add(PopularModel(
        name: "Popsicles",
        imgPath: "assets/icons/popsicleicon.svg",
        difficultyLevel: "Expert",
        calorieCount: "90kcal",
        timeDuration: "45min",
        isSelected: true));

    return popular;
  }
}
