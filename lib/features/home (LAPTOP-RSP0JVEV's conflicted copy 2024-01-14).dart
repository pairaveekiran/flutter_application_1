import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add todo",
          selectionColor: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        Center(
          child: Container(
            color: Colors.red,
            width: 80,
            height: 30,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // Row(
        //   children: [
        //     Center(
        //       child: Container(
        //         color: Colors.green,
        //         width: 80,
        //         height: 30,
        //       ),
        //     ),
        //   ],
        // ),
        const SizedBox(
          width: 20,
        ),
        Center(
          child: Row(
            children: [
              Container(
                color: Colors.blue,
                width: 80,
                height: 30,
              ),
              const SizedBox(width: 20),
              Container(
                color: Colors.pink,
                width: 80,
                height: 30,
              ),
              const SizedBox(width: 20),
              Container(
                color: Colors.brown,
                width: 80,
                height: 30,
              ),
              const SizedBox(width: 20),
              Container(
                color: Colors.orange,
                width: 80,
                height: 30,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            color: Colors.yellow,
            width: 100,
            height: 30,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            color: Colors.purple,
            width: 100,
            height: 30,
          ),
        ),
      ]),
    );
  }
}
