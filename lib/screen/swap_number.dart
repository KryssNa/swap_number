import 'package:flutter/material.dart';

class SwapNumber extends StatefulWidget {
  const SwapNumber({super.key});

  @override
  State<SwapNumber> createState() => _SwapNumberState();
}

class _SwapNumberState extends State<SwapNumber> {
  int? firstNumber = 0;
  int? secondNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swap Number"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() {
                firstNumber = int.parse(value);
              }),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter first number"),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() {
                secondNumber = int.parse(value);
              }),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter first number"),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    firstNumber = firstNumber! + secondNumber!;
                    secondNumber = firstNumber! - secondNumber!;
                    firstNumber = firstNumber! - secondNumber!;
                  });
                },
                child: const Text("Swap")),
            Text("first number:$firstNumber \n second number:$secondNumber"),
          ],
        ),
      ),
    );
  }
}
