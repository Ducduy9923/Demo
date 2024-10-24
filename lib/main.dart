import 'package:caculator/bloc/calculator_event.dart';
import 'package:caculator/bloc/calculator_state.dart';
import 'package:caculator/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/calculator_bloc.dart';

void main() {
  runApp(BlocProvider<CalculatorBloc>(
      create: (context) => CalculatorBloc(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController textInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (c, s) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(widget.title),
            ),
            body: Column(
              children: [
                /// View input
                Expanded(
                  child: Container(
                    child: Column(
                      children: [Text(s.textViewInput)],
                    ),
                  ),
                ),

                /// Input key
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              BlocProvider.of<CalculatorBloc>(context)
                                  .add(CalculatorPerformKeyEvent("C"));
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Text(
                                "C",
                                style: sfProDisplayRegularStyle.copyWith(
                                    fontSize: 32),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          InkWell(
                            onTap: () {
                              BlocProvider.of<CalculatorBloc>(context)
                                  .add(CalculatorPerformKeyEvent("7"));
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Text(
                                "7",
                                style: sfProDisplayRegularStyle.copyWith(
                                    fontSize: 32),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          InkWell(
                            onTap: () {
                              BlocProvider.of<CalculatorBloc>(context)
                                  .add(CalculatorPerformKeyEvent("4"));
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Text(
                                "4",
                                style: sfProDisplayRegularStyle.copyWith(
                                    fontSize: 32),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          InkWell(
                            onTap: () {
                              BlocProvider.of<CalculatorBloc>(context)
                                  .add(CalculatorPerformKeyEvent("1"));
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Text(
                                "1",
                                style: sfProDisplayRegularStyle.copyWith(
                                    fontSize: 32),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          InkWell(
                              onTap: () {
                                BlocProvider.of<CalculatorBloc>(context)
                                    .add(CalculatorPerformKeyEvent("0"));
                              },
                              child: Container(
                                width: 56,
                                height: 56,
                                child: Text(
                                  "0",
                                  style: sfProDisplayRegularStyle.copyWith(
                                      fontSize: 32),
                                ),
                              )),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            child: Text("0",
                                style: sfProDisplayRegularStyle.copyWith(
                                    fontSize: 32)),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          InkWell(
                            onTap: () {
                              BlocProvider.of<CalculatorBloc>(context)
                                  .add(CalculatorPerformKeyEvent("8"));
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Text("8",
                                  style: sfProDisplayRegularStyle.copyWith(
                                      fontSize: 32)),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          InkWell(
                            onTap: () {
                              BlocProvider.of<CalculatorBloc>(context)
                                  .add(CalculatorPerformKeyEvent("5"));
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Text("5",
                                  style: sfProDisplayRegularStyle.copyWith(
                                      fontSize: 32)),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          InkWell(
                            onTap: () {
                              BlocProvider.of<CalculatorBloc>(context)
                                  .add(CalculatorPerformKeyEvent("2"));
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Text("2",
                                  style: sfProDisplayRegularStyle.copyWith(
                                      fontSize: 32)),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Container(
                            width: 56,
                            height: 56,
                            child: Text("0",
                                style: sfProDisplayRegularStyle.copyWith(
                                    fontSize: 32)),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            child: Text("C",
                                style: sfProDisplayRegularStyle.copyWith(
                                    fontSize: 32)),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          InkWell(
                            onTap: () {
                              BlocProvider.of<CalculatorBloc>(context)
                                  .add(CalculatorPerformKeyEvent("9"));
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Text("9",
                                  style: sfProDisplayRegularStyle.copyWith(
                                      fontSize: 32)),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          InkWell(
                            onTap: () {
                              BlocProvider.of<CalculatorBloc>(context)
                                  .add(CalculatorPerformKeyEvent("6"));
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Text("6",
                                  style: sfProDisplayRegularStyle.copyWith(
                                      fontSize: 32)),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          InkWell(
                            onTap: () {
                              BlocProvider.of<CalculatorBloc>(context)
                                  .add(CalculatorPerformKeyEvent("3"));
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Text("3",
                                  style: sfProDisplayRegularStyle.copyWith(
                                      fontSize: 32)),
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Container(
                            width: 56,
                            height: 56,
                            child: Text("1",
                                style: sfProDisplayRegularStyle.copyWith(
                                    fontSize: 32)),
                          )
                        ],
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.yellowAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("/"));
                              },
                              child: Container(
                                width: 56,
                                height: 56,
                                child: Text("/",
                                    style: sfProDisplayRegularStyle.copyWith(
                                        fontSize: 32)),
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            InkWell(
                              onTap: () {
                                BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("x"));
                              },
                              child: Container(
                                width: 56,
                                height: 56,
                                child: Text("x",
                                    style: sfProDisplayRegularStyle.copyWith(
                                        fontSize: 32)),
                              ),
                            ),

                            SizedBox(
                              height: 17,
                            ),
                            InkWell(
                              onTap: () {
                                BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("-"));
                              },
                              child: Container(
                                width: 56,
                                height: 56,
                                child: Text("-",
                                    style: sfProDisplayRegularStyle.copyWith(
                                        fontSize: 32)),
                              ),
                            ),

                            SizedBox(
                              height: 17,
                            ),
                            InkWell(
                              onTap: () {
                                BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("+"));
                              },
                              child: Container(
                                width: 56,
                                height: 56,
                                child: Text("+",
                                    style: sfProDisplayRegularStyle.copyWith(
                                        fontSize: 32)),
                              ),
                            ),

                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              width: 56,
                              height: 56,
                              child: Center(
                                  child: Text("=",
                                      style: sfProDisplayRegularStyle.copyWith(
                                          fontSize: 32))),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ));
      },
    );
  }
}
// BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("0"));
// BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("1"));
// BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("2"));
// BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("3"));
// BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("4"));
// BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("5"));
// BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("6"));
// BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("7"));
// BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("8"));
// BlocProvider.of<CalculatorBloc>(context).add(CalculatorPerformKeyEvent("9"));
