import 'package:flutter/material.dart';

class Question extends StatefulWidget{
  @override
  State<Question> createState() {
    return _QuestionState();
  }
}
class _QuestionState extends State<Question>{
  @override
  Widget build(context) {
    return Scaffold(body:
      SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Question..."
            ),
            ElevatedButton(onPressed: (){},
                child: Text(
                  "Answer-1"
                )
            ),
            ElevatedButton(onPressed: (){},
                child:Text(
                  "Answer-2"
                )
            ),
            ElevatedButton(onPressed: (){},
                child: Text(
                  "Answer-3"
                )
            ),
            ElevatedButton(onPressed: (){},
                child: Text(
                  "Answer-4"
                )
            )
          ],
        ),
      ),
    );
  }
}