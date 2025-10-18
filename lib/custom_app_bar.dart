import 'package:flutter/material.dart';


class CustomBar extends StatelessWidget implements PreferredSizeWidget {
  CustomBar({super.key});

  // Define the preferred size of the AppBar
  @override
  Size get preferredSize => const Size.fromHeight(70.0); // Set the height of the AppBar

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
          "Simple Flutter Quize App",
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white
          )
          ),
      backgroundColor: Colors.black,
    );
  }
}
