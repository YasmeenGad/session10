import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:session10/views/bloc/bloc.dart';
import 'package:session10/views/bloc/bloc_ui.dart';
import 'package:session10/views/provider.dart';
import 'package:session10/views/state_ful_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // state ful widget
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //       debugShowCheckedModeBanner: false, home: StateFulWidgetScreen());
  // }

  /*-------------------------------------------------*/

  // Provider
  @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => Counter(),
  //     child: MaterialApp(
  //         debugShowCheckedModeBanner: false, home: ProviderScreen()),
  //   );
  // }

  /*-------------------------------------------------*/

  //bloc
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: BlocUi()),
    );
  }
}
