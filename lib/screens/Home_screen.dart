import 'package:flutter/material.dart';
import 'package:flutter_application_6/widgets/crazy_counter.dart';

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
        child: ListView(
          children: [
            for (int i = 0; i <= 50; i++) CrazyCounter(),
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
