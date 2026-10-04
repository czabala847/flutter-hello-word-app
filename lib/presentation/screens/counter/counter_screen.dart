import 'package:flutter/material.dart'; //importM

//stles
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  // String _counterClickText = 'Click';

  void _incrementCounter() {
    setState(() {
      _counter++;
      // _counterClickText = _counter == 1 ? 'Click' : 'Clicks';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_counter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click${ _counter == 1 ? '' : 's' }', style: TextStyle(fontSize: 25, color: Colors.grey[400])),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
