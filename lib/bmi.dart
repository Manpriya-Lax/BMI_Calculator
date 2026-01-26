import 'package:flutter/material.dart';

class BMIcal extends StatefulWidget {
  const BMIcal({super.key});

  @override
  State<BMIcal> createState() => _BMIcalState();
}

class _BMIcalState extends State<BMIcal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),

      body: Column(

        children: [
          const Text("Welcome to the BMI Calculator!"),
          ElevatedButton(onPressed:() {}, child: Text("calculate BMI"))
        ],
      ),  
    );
  }
}