import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Número de clicks:',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            ),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop, // tarea para probar ubicación de botón
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
            setState(() {});
          }),
    );
  }
}
