import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 41, 130, 227),
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40
        ),
      ),
        child:
        Text(
          text
        )
    );
  }
}