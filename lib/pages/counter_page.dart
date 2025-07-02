import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  // variable 
  int _counter = 0;

  // method 
  void _incrementCounter() {
    //set state is used for stateful widgets -> rebuilds the widget (the counter wont change if we press the button w/o setState)
    setState(() {
      _counter++;
    });
  }

  // UI


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //message
              Text('You pushed the + button this many times:'),
          
              //counter value
              Text(
                _counter.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
          
              //button
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('+'),
                )
            ],
          ),
        ),
    );
  }
}