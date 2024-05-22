import 'package:flutter/material.dart';

class BMIResultScreem extends StatelessWidget {
  const BMIResultScreem(
      {super.key,
      required this.result,
      required this.isMale,
      required this.age});
  final double result;
  final bool isMale;
  final int age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          "BMI Result",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${isMale ? 'Male' : "Female"}",
              style:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Result : ${result.round()}",
              style:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Age : $age",
              style:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
