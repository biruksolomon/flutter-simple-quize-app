import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You Answered X from Y Questions"
            ),
            SizedBox(height: 20,),
            Text(
              "List of Answers..."
            ),
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
    );
  }
}