import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        "Amazon",
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 0, 148, 197),
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          width: 60,
          margin: EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 234, 234, 234),
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
              color: Color.fromARGB(255, 234, 234, 234),
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
