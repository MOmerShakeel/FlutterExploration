import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_exploration/models/category_model.dart";
import "package:flutter_exploration/models/diet_model.dart";
import "package:flutter_exploration/models/popular_model.dart";
import "package:flutter_svg/svg.dart";

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularModel> popular = [];

  void getInitialInfo() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    popular = PopularModel.getPopular();
  }

  @override
  Widget build(BuildContext context) {
    getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          searchField(),
          SizedBox(
            height: 20,
          ),
          _categoriesSection(),
          SizedBox(
            height: 20,
          ),
          _dietsSection(),
          SizedBox(
            height: 20,
          ),
          _popularSection()
        ],
      ),
    );
  }

  Column _popularSection() {
    return Column(
      children: [
        Container(
          height: 70,
          margin: EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Popular Items",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(15),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.amber.shade200.withOpacity(0.4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    popular[index].imgPath,
                    height: 70,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        popular[index].name,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        popular[index].difficultyLevel +
                            ' | ' +
                            popular[index].timeDuration +
                            ' | ' +
                            popular[index].calorieCount,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/options.svg",
                    height: 30,
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
          itemCount: popular.length,
          shrinkWrap: true,
        )
      ],
    );
  }

  Column _dietsSection() {
    return Column(
      children: [
        Container(
          height: 70,
          margin: EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Recommended Diets",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        Container(
          height: 240,
          padding: EdgeInsets.only(left: 15, right: 15),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 229, 255, 203).withOpacity(0.7)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(diets[index].imgPath),
                      ),
                    ),
                    Text(
                      diets[index].name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Text(
                      diets[index].difficultyLevel +
                          ' | ' +
                          diets[index].timeDuration +
                          ' | ' +
                          diets[index].calorieCount,
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                    Container(
                      height: 35,
                      width: 130,
                      child: Center(
                        child: Text(
                          "View",
                          style: TextStyle(
                              color: diets[index].viewIsSelected
                                  ? Colors.black
                                  : Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            diets[index].viewIsSelected
                                ? Color.fromARGB(255, 193, 241, 117)
                                : Colors.transparent,
                            diets[index].viewIsSelected
                                ? Color.fromARGB(255, 238, 245, 116)
                                : Colors.transparent
                          ]),
                          borderRadius: BorderRadius.circular(8)),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 25,
            ),
            itemCount: diets.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  Column _categoriesSection() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Categories',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 100,
          padding: EdgeInsets.only(left: 15, right: 15),
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 25,
            ),
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 120,
                decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SvgPicture.asset(categories[index].iconPath),
                      ),
                    ),
                    Text(
                      categories[index].name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Container searchField() {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20, left: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          hintText: "Search...",
          hintStyle: TextStyle(fontSize: 16, color: Colors.black38),
          prefixIcon: Padding(
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset("assets/icons/searchicon.svg"),
          ),
          suffixIcon: Container(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Color.fromARGB(255, 91, 91, 91),
                    thickness: 0.2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/filtericon.svg"),
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        "Konoha Food Center",
        style: TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          width: 25,
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: SvgPicture.asset(
            "assets/icons/back-button.svg",
            height: 25,
            width: 25,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            width: 25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: SvgPicture.asset(
              "assets/icons/options.svg",
              height: 25,
              width: 25,
            ),
          ),
        ),
      ],
    );
  }
}
