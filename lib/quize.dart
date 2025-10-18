import 'package:flutter/material.dart';
import 'package:sample_quize_app/questions.dart';
import 'package:sample_quize_app/start_screen.dart';

import 'custom_app_bar.dart';

class Quize extends StatefulWidget{
  @override
  State<Quize> createState() {

    return _QuizeState();
  }
}
class _QuizeState extends State<Quize>{
  Widget ? activeScreen;

  @override
  void initState() {
    activeScreen=StartScreen(switchscreen);
    super.initState();
  }

  void switchscreen(){
    setState(() {
      activeScreen=Questions();
    });
  }

   @override
  Widget build(context) {
   return  MaterialApp(
     home: Scaffold(
       appBar: CustomBar(),
       body: activeScreen,
     ),
   );
  }
}