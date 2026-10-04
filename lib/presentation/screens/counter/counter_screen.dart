import 'package:flutter/material.dart'; //importM

//stles
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

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
            Text('10', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Clicks', style: TextStyle(fontSize: 25, color: Colors.grey[400])),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
