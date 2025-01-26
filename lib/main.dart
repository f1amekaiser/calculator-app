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
                    stvar = '';
                  });
                }
              },
              child: Text(
                "=",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "7",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "8",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "9",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
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
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(25),
                  color: Colors.red,
                  child: Text(
                    "AC",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "4",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "5",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "6",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
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
                  shape: CircleBorder(),
                  color: Colors.grey,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "/",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "1",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "2",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "3",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
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
                  shape: CircleBorder(),
                  color: Colors.grey,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "X",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "0",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
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
                  shape: CircleBorder(),
                  color: Colors.white60,
                  padding: EdgeInsets.all(25),
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
                  shape: CircleBorder(),
                  color: Colors.grey,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "-",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white),
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
                  shape: CircleBorder(),
                  color: Colors.grey,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "+",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white),
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
