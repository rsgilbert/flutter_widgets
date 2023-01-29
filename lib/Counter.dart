import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CounterDisplay extends StatelessWidget {
  const CounterDisplay({ required this.count, super.key });

  final int count;

  @override 
  Widget build(BuildContext context) {
    return Text('Count is -> $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({ required this.onPressed, super.key });

  final VoidCallback onPressed;
  @override 
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: const Text('Increment'));
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CounterIncrementor(onPressed: _increment),
        ElevatedButton(onPressed: _increment, child: const Text("Increment Counter")),
        const SizedBox(width: 16),
        Text("Count: $_counter"),
        CounterDisplay(count: _counter)
    ],);
  }
}
