import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi_result.dart';

class bmi_screen extends StatefulWidget {
  const bmi_screen({Key? key}) : super(key: key);

  @override
  State<bmi_screen> createState() => _bmi_screenState();
}

class _bmi_screenState extends State<bmi_screen> {
  bool ismale = true;
  double height = 120;
  double weight = 80;
double result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(23, 22, 53, 30),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(23, 22, 60, 10),
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              // decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(35, 22, 10, 15),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(23, 22, 60, 10),
                              border: Border.all(
                                color: ismale
                                    ? Colors.white
                                    : Color.fromRGBO(205, 126, 171, 50),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 110,
                                color: ismale
                                    ? Colors.white
                                    : Color.fromRGBO(205, 126, 171, 50),
                                //color: Color.fromRGBO(205, 126, 171, 50),
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: ismale
                                        ? Colors.white
                                        : Color.fromRGBO(205, 126, 171, 50),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 22, 35, 15),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: !ismale
                                    ? Colors.white
                                    : Color.fromRGBO(205, 126, 171, 50),
                              ),
                              color: Color.fromRGBO(23, 22, 60, 10),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 110,
                                color: !ismale
                                    ? Colors.white
                                    : Color.fromRGBO(205, 126, 171, 50),
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    color: !ismale
                                        ? Colors.white
                                        : Color.fromRGBO(205, 126, 171, 50),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              //  decoration: BoxDecoration(color: Colors.amber),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 35, 20, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          color: const Color.fromRGBO(23, 22, 60, 10),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("Your Height in cm",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                199, 202, 207, 40),
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text("${height.round()}",
                                        style: const TextStyle(
                                            color: Color.fromRGBO(
                                                199, 202, 207, 40),
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)),
                                    const Text("cm",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                199, 202, 207, 40),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Slider(
                                    activeColor:
                                        const Color.fromRGBO(205, 126, 171, 50),
                                    inactiveColor:
                                        const Color.fromRGBO(199, 202, 207, 40),
                                    thumbColor:
                                        const Color.fromRGBO(199, 202, 207, 40),
                                    value: height,
                                    max: 240,
                                    min: 60,
                                    onChanged: (value) {
                                      setState(() {
                                        height = value;
                                      });
                                    })
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              //   decoration: BoxDecoration(color: Colors.grey),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          color: const Color.fromRGBO(23, 22, 60, 10),
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("Your Weight in kg",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                199, 202, 207, 40),
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text("${weight.round()}",
                                        style: const TextStyle(
                                            color: Color.fromRGBO(
                                                199, 202, 207, 40),
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)),
                                    const Text("kg",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                199, 202, 207, 40),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Slider(
                                    activeColor:
                                        const Color.fromRGBO(205, 126, 171, 50),
                                    inactiveColor:
                                        const Color.fromRGBO(199, 202, 207, 40),
                                    thumbColor:
                                        const Color.fromRGBO(199, 202, 207, 40),
                                    value: weight,
                                    max: 200,
                                    min: 40,
                                    onChanged: (value) {
                                      setState(() {
                                        weight = value;
                                      });
                                    })
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.transparent,
            child: MaterialButton(
              color: const Color.fromRGBO(49, 56, 126, 20),
              onPressed: (
                  ) {
                 result = weight / pow(height / 100 ,2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bmi_result(
                      result: result,
                      weight: weight,
                      height: height,
                      ismale: ismale,
                    ),
                  ),
                );
              },
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Calculate Your BMI",
                      style: TextStyle(
                          color: Colors.white, fontSize: 23, letterSpacing: 1),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_right_alt_sharp,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
