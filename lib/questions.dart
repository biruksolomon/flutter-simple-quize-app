import 'package:flutter/material.dart';

class Questions extends StatefulWidget{
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}
class _QuestionsState extends State<Questions>{
  @override
  Widget build(context) {
    return Scaffold(body:
     Center(
       child:
       Text(
         "Questions"
       ),
     ) ,
    );
  }
}