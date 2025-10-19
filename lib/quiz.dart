import 'package:flutter/material.dart';
import 'package:sample_quize_app/data/questions.dart';
import 'package:sample_quize_app/question.dart';
import 'package:sample_quize_app/result_screen.dart';
import 'package:sample_quize_app/start_screen.dart';

import 'custom_app_bar.dart';

class Quiz extends StatefulWidget{
  @override
  State<Quiz> createState() {

    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  List<String> selectedAnswers=[];

  Widget ? activeScreen;

  @override
  void initState() {
    activeScreen=StartScreen(switchscreen);
    super.initState();
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length){
      setState(() {
        selectedAnswers=[];
        activeScreen=ResultScreen();
      });
    }
  }

  void switchscreen(){
    setState(() {
      activeScreen=Question(chooseAnswer);
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