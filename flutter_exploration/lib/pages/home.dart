import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [searchField()],
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
          hintText: "Search Here",
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
                  VerticalDivider(
                    color: const Color.fromARGB(255, 246, 117, 117),
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
        "Flutter Exploration",
        style: TextStyle(
          fontSize: 24,
          color: Color.fromARGB(255, 0, 159, 35),
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 19, 196, 96),
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          width: 60,
          margin: EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 255, 255),
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
            margin: EdgeInsets.all(8),
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 255, 255, 255),
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
