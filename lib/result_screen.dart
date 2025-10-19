import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_quize_app/data/questions.dart';
import 'package:sample_quize_app/question_summary.dart';

class ResultScreen extends StatelessWidget{


  ResultScreen({super.key,required this.chosenAnswers,});
  List<String> chosenAnswers;
   List<Map<String, Object>> getSummaryData(){
     final List<Map<String,Object>> summary=[];

     for(var i=0; i<questions.length;i++){

       summary.add({
         'question_index':i,
         'question':questions[i].question,
         'correct_answer':questions[i].answers[0],
         'user_answer':chosenAnswers[i]
       });

     }
     return summary;

   }



  @override
  Widget build(BuildContext context) {
    final SummaryData=getSummaryData();
    final numTotalQuestions=questions.length;
    final UserCorrectAnswer=SummaryData.where((data){
      return data['user_answer']==data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: SingleChildScrollView(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You Answered $UserCorrectAnswer from $numTotalQuestions Questions"
            ),
            SizedBox(height: 20,),
            QuestionSummary(summaryData: getSummaryData()),
            SizedBox(height: 20,),
            TextButton(
                onPressed: (){},
                child: Text(
                  "Restart The Quiz"
                )
            )
          ],
        ),
      ),
      )
    );
  }
}