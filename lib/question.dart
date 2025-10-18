import 'package:flutter/material.dart';
import 'package:sample_quize_app/data/questions.dart';
import 'answer_button.dart';

class Question extends StatefulWidget{
  @override
  State<Question> createState() {
    return _QuestionState();
  }
}
class _QuestionState extends State<Question>{

  var CurrentQuestionIndex=0;

  void answerQuestion(){
    setState(() {
      CurrentQuestionIndex++;
    });
  }
  @override
  Widget build(context) {

    final currentquestion=questions[CurrentQuestionIndex] ;
    return Scaffold(body:
      SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 20,
          children: [
            Text(
              currentquestion.question,
              style: TextStyle(
                color: Color.fromARGB(255, 41, 130, 227),
                fontSize: 35,
              ),
              textAlign:TextAlign.center ,
            ),
            ...currentquestion.getShuffledAnswer().map((answer){
              return AnswerButton(text: answer, onTap: answerQuestion);
      }
            )],
        ),
      ),
    )
    );
  }
}