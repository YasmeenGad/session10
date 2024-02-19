import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<Counter>(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {
                counterProvider.decrement();
              },
              icon: Icon(CupertinoIcons.minus),
            ),
            Text('Counter: ${counterProvider.counter}'),
            IconButton(
              onPressed: () {
                counterProvider.increment();
              },
              icon: Icon(CupertinoIcons.plus),
            )
          ],
        ),
      ),
    );
  }
}

class Counter with ChangeNotifier {
  int counter = 0;
  int get value => counter;
  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}
