class DietModel {
  String imgPath;
  String name;
  String difficultyLevel;
  String timeDuration;
  String calorieCount;
  bool viewIsSelected;

  DietModel(
      {required this.imgPath,
      required this.name,
      required this.difficultyLevel,
      required this.timeDuration,
      required this.calorieCount,
      required this.viewIsSelected});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
        imgPath: "assets/icons/pancakeicon.svg",
        name: "Honey Pancake",
        difficultyLevel: "Easy",
        timeDuration: "30mins",
        calorieCount: "300kcal",
        viewIsSelected: true));

    diets.add(DietModel(
        imgPath: "assets/icons/toasticon.svg",
        name: "Lotus French Toast",
        difficultyLevel: "Medium",
        timeDuration: "120mins",
        calorieCount: "190kcal",
        viewIsSelected: false));

    diets.add(DietModel(
        imgPath: "assets/icons/icecreamicon.svg",
        name: "Lemon Ice Cream",
        difficultyLevel: "Hard",
        timeDuration: "180mins",
        calorieCount: "60kcal",
        viewIsSelected: false));

    return diets;
  }
}
