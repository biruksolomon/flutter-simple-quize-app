import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {

  StartScreen(this.startQuize,{super.key});

  void Function() startQuize;

  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(opacity: 1,child:
          Image.asset("assets/images/image.png",width: 250,)),
          SizedBox(height: 20,),
          Text(
              "Welcome to Flutter Quizes",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 41, 130, 227)
            ),
          ),
          SizedBox(height: 25,),
          OutlinedButton.icon(
              onPressed: startQuize,
              style: OutlinedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 41, 130, 227),
              ),

              label:Text(
                "Start Quize",
                style: TextStyle(
                  color: Colors.white,fontSize: 20
                ),
              ),
            icon: Icon(Icons.arrow_forward_sharp),
          )
        ],
      ),
    );
  }

}