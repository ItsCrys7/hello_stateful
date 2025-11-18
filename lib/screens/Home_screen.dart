import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        title: Text('Counterul este $_counter'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$_counter',
              style: TextStyle(fontSize: 72.0),
            ),
            if (_counter > 100) Text('Ai trecut de 100! Congrats!'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          setState(() {
            _counter++;
          });
          // _counter++;
          // setState(() {});
          // print(_counter);
        },
      ),
    );
  }
}
