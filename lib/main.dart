import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        "Calculator",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: AppBody(),
    ));
  }
}

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  String stvar = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(children: [
            Expanded(
              child: Text(
                stvar.toString(),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            MaterialButton(
              onPressed: () {
                try {
                  Parser parser = Parser();
                  Expression expression = parser.parse(stvar);
                  ContextModel contextModel = ContextModel();
                  double eval =
                      expression.evaluate(EvaluationType.REAL, contextModel);

                  setState(() {
                    stvar = eval.toString();
                  });
                } catch (e) {
                  setState(() {
                    stvar = 'Error';
                  });
                }
              },
              child: Text(
                "=",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ]),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '7';
                    });
                  },
                  child: Text(
                    "7",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '8';
                    });
                  },
                  child: Text(
                    "8",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '9';
                    });
                  },
                  child: Text(
                    "9",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar = '';
                    });
                  },
                  child: Text(
                    "AC",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '4';
                    });
                  },
                  child: Text(
                    "4",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '5';
                    });
                  },
                  child: Text(
                    "5",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '6';
                    });
                  },
                  child: Text(
                    "6",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '/';
                    });
                  },
                  child: Text(
                    "/",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '1';
                    });
                  },
                  child: Text(
                    "1",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '2';
                    });
                  },
                  child: Text(
                    "2",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '3';
                    });
                  },
                  child: Text(
                    "3",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '*';
                    });
                  },
                  child: Text(
                    "X",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '0';
                    });
                  },
                  child: Text(
                    "0",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '.';
                    });
                  },
                  child: Text(
                    ".",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '-';
                    });
                  },
                  child: Text(
                    "-",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      stvar += '+';
                    });
                  },
                  child: Text(
                    "+",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
