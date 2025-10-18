import 'package:flutter/material.dart';
import 'package:sample_quize_app/start_screen.dart';

import 'custom_app_bar.dart';

void main(){
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: CustomBar(),
          body: StartScreen(),
        ),
      )
  );
}