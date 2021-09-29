import 'package:example/example.dart';
import 'package:flutter/material.dart';
import 'package:q_action/q_action.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: QAction(
        question: "Want learn more?",
        actionName: "Click Here",
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Example(),
            ),
          );
        },
      ),
    );
  }
}
