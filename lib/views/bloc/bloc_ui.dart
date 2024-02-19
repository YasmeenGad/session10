import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session10/views/bloc/bloc.dart';
import 'package:session10/views/bloc/event.dart';
import 'package:session10/views/bloc/state.dart';

class BlocUi extends StatelessWidget {
  const BlocUi({super.key});

  @override
  Widget build(BuildContext context) {
    // int counter1 = BlocProvider.of<CounterBloc>(context).counter;
    return Scaffold(body: BlocBuilder<CounterBloc, CounterStates>(
      builder: (context, state) {
        if (state is InitialState) {
          return Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context)
                        .add(NumberDecreaseEvent());
                  },
                  icon: Icon(CupertinoIcons.minus),
                ),
                Text(
                    'Counter: ${BlocProvider.of<CounterBloc>(context).counter}'),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context)
                        .add(NumberIncreaseEvent());
                  },
                  icon: Icon(CupertinoIcons.plus),
                )
              ],
            ),
          );
        } else if (state is UpdateState) {
          return Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context)
                        .add(NumberDecreaseEvent());
                  },
                  icon: Icon(CupertinoIcons.minus),
                ),
                Text(
                    'Counter: ${BlocProvider.of<CounterBloc>(context).counter}'),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context)
                        .add(NumberIncreaseEvent());
                  },
                  icon: Icon(CupertinoIcons.plus),
                )
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    ));
  }
}
