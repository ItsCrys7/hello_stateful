
import 'package:flutter/material.dart';

class CrazyCounter extends StatefulWidget {
  const CrazyCounter({super.key, this.onCounterChanged});

  final Function(int value)? onCounterChanged;
  @override
  State<CrazyCounter> createState() => _CrazyCounterState();
}

class _CrazyCounterState extends State<CrazyCounter> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // counter subtract button
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            setState(() {
              _counter--;
            });
            widget.onCounterChanged?.call(_counter);
          },
        ),
        // text widget that displays the counter
        Text(_counter.toString()),
        // counter add button
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _counter++;
            });
            widget.onCounterChanged?.call(_counter);
          },
        ),
      ],
    );
  }
}
