import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double result = 0;
  TextEditingController _firstNum = TextEditingController();
  TextEditingController _secondNum = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _firstNum,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter first number"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _secondNum,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter second number"),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    double num1 = double.parse(_firstNum.text);
                    double num2 = double.parse(_secondNum.text);
                    result = num1 + num2;
                    setState(() {});
                  },
                  child: const Text(('Add'))),
              ElevatedButton(
                  onPressed: () {
                    double num1 = double.parse(_firstNum.text);
                    double num2 = double.parse(_secondNum.text);
                    result = num1 - num2;
                    setState(() {});
                  },
                  child: const Text(('Sub'))),
              ElevatedButton(
                  onPressed: () {
                    double num1 = double.parse(_firstNum.text);
                    double num2 = double.parse(_secondNum.text);
                    result = num1 * num2;
                    setState(() {});
                  },
                  child: const Text(('Mul'))),
              ElevatedButton(
                  onPressed: () {
                    double num1 = double.parse(_firstNum.text);
                    double num2 = double.parse(_secondNum.text);
                    result = num1 / num2;
                    setState(() {});
                  },
                  child: const Text(('Div'))),
            ],
          ),
          const SizedBox(height: 10),
          Text('Result:$result'),
        ],
      ),
    );
  }
}
