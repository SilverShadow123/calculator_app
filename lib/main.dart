import 'package:flutter/material.dart';
import 'home_screen.dart';

void main()
{
  runApp(calculator_app());
}

class calculator_app extends StatelessWidget {
  const calculator_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData.dark(),
    );
  }
}
