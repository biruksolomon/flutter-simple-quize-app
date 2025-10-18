import 'package:flutter/material.dart';
import 'package:sample_quize_app/question.dart';
import 'package:sample_quize_app/start_screen.dart';

import 'custom_app_bar.dart';

class Quiz extends StatefulWidget{
  @override
  State<Quiz> createState() {

    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  Widget ? activeScreen;

  @override
  void initState() {
    activeScreen=StartScreen(switchscreen);
    super.initState();
  }

  void switchscreen(){
    setState(() {
      activeScreen=Question();
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