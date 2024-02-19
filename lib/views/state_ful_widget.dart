import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateFulWidgetScreen extends StatefulWidget {
  const StateFulWidgetScreen({super.key});

  @override
  State<StateFulWidgetScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<StateFulWidgetScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {
                counter--;
                setState(() {});
              },
              icon: Icon(CupertinoIcons.minus),
            ),
            Text('Counter: $counter'),
            IconButton(
              onPressed: () {
                counter++;
                setState(() {});
              },
              icon: Icon(CupertinoIcons.plus),
            )
          ],
        ),
      ),
    );
  }
}
