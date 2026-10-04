import 'package:flutter/material.dart'; //importM

//stles
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () => {
              setState(() {
                _counter = 0;
              }),
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'Click${_counter == 1 ? '' : 's'}',
              style: TextStyle(fontSize: 25, color: Colors.grey[400]),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.refresh_rounded, onPressed: () {
            setState(() {
              _counter = 0;
            });
          }),
          SizedBox(height: 10),
          CustomButton(icon: Icons.plus_one, onPressed: () {
            setState(() {
              _counter++;
            });
          }),
          SizedBox(height: 10),
          CustomButton(icon: Icons.exposure_minus_1_outlined, onPressed: () {
            if (_counter == 0) return;
            setState(() {
              _counter--;
            });
          }),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
