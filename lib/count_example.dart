import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/count_example.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Count Example"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Consumer<CounterProvider>(
            builder: (context, value, child) {
              return Text(
                value.count.toString(),
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          )),
          const SizedBox(
            height: 40,
          ),
          Consumer<CounterProvider>(builder: (context, value, child) {
            return FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                value.getCount();
              },
            );
          })
        ],
      ),
    );
  }
}
