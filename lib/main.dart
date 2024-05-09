import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  // TextEditingController number1 = TextEditingController();
  // TextEditingController number2 = TextEditingController();
  // double result = 0;
  // double mathsOperation(String operation) {
  //   double num1 = double.parse(number1.text);
  //   double num2 = double.parse(number2.text);

  //   if (operation == "+") {
  //     return num1 + num2;
  //   } else if (operation == "-") {
  //     return num1 - num2;
  //   } else if (operation == "/") {
  //     return num1 / num2;
  //   } else if (operation == "*") {
  //     return num1 * num2;
  //   } else {
  //     return 0;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      CtmButton(
                        btnValue: '1',
                        ontap: () {
                          log('hello');
                        },
                      ),
                      const SizedBox(width: 20),
                      CtmButton(
                        btnValue: '2',
                        ontap: () {},
                      ),
                      const SizedBox(width: 20),
                      CtmButton(
                        btnValue: '3',
                        ontap: () {},
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                        child: const Text('Del'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                        child: const Text('AC'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      CtmButton(
                        btnValue: '4',
                        ontap: () {},
                      ),
                      const SizedBox(width: 20),
                      CtmButton(
                        btnValue: '5',
                        ontap: () {},
                      ),
                      const SizedBox(width: 20),
                      CtmButton(
                        btnValue: '6',
                        ontap: () {},
                      ),
                      const SizedBox(width: 20),
                      CtmButton(
                        btnValue: '/',
                        ontap: () {},
                      ),
                      const SizedBox(width: 20),
                      CtmButton(
                        btnValue: '*',
                        ontap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      CtmButton(
                        btnValue: '7',
                        ontap: () {},
                      ),
                      const SizedBox(width: 20),
                      CtmButton(
                        btnValue: '8',
                        ontap: () {},
                      ),
                      const SizedBox(width: 20),
                      CtmButton(
                        btnValue: '9',
                        ontap: () {},
                      ),
                      const SizedBox(width: 20),
                      CtmButton(
                        btnValue: '+',
                        ontap: () {},
                      ),
                      const SizedBox(width: 20),
                      CtmButton(
                        btnValue: '-',
                        ontap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CtmButton extends StatelessWidget {
  final String btnValue;
  final VoidCallback ontap;
  const CtmButton({
    super.key,
    required this.btnValue,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [ElevatedButton(onPressed: ontap, child: Text(btnValue))],
    );
  }
}
