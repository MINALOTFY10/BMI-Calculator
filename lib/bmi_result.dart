import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/bmi_screen.dart';

class bmi_result extends StatelessWidget {

  bool ismale = true;
  double height = 120;
  double weight = 80;
  double result;

  bmi_result({
    required this.result,
    required this.weight,
    required this.height,
    required this.ismale,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(23, 22, 53, 30),
      appBar: AppBar(
        title: const Text("BMI Result"),
        backgroundColor: const Color.fromRGBO(23, 22, 60, 10),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ismale ? const Text(
              "Gender: Male ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,letterSpacing: 1),
            ) : const Text(
              "Gender: Female ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,letterSpacing: 1),
            ),

            const SizedBox(
              height: 10,
            ),
            Text(
              "Height: ${height.round()}cm",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,letterSpacing: 1),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Weight: ${weight.round()}kg",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,letterSpacing: 1),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "BMI: ${result.round()}",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,letterSpacing: 1),
            ),

          ],
        ),
      ),
    );
  }
}
