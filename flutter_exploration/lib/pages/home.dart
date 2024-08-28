import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/svg.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchField(),
          SizedBox(
            height: 40,
          ),
          Column(
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
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(40),
                color: const Color.fromARGB(255, 219, 255, 177),
              )
            ],
          ),
        ],
      ),
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
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset("assets/icons/searchicon.svg"),
          ),
          suffixIcon: Container(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const VerticalDivider(
                    color: Color.fromARGB(255, 91, 91, 91),
                    thickness: 0.2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
      title: const Text(
        "Shajarkaari",
        style: TextStyle(
          fontSize: 24,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 127, 214, 165),
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          width: 60,
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          child: SvgPicture.asset(
            "assets/icons/back-button.svg",
            height: 30,
            width: 30,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(8),
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            child: SvgPicture.asset(
              "assets/icons/options.svg",
              height: 30,
              width: 30,
            ),
          ),
        ),
      ],
    );
  }
}
