library q_action;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class QAction extends StatelessWidget {
  final String question;
  final String actionName;
  final Color questionColor;
  final Color actionNameColor;
  final Function action;
  final TextStyle? questionStyle;
  final TextStyle? actionNameStyle;
  final double? fontSize;

  const QAction({
    Key? key,
    required this.question,
    required this.actionName,
    this.questionColor = Colors.black,
    this.actionNameColor = Colors.blue,
    required this.action,
    this.questionStyle,
    this.actionNameStyle,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: question + ' ',
        style: questionStyle ??
            TextStyle(
              fontSize: fontSize ?? 12,
              color: questionColor,
            ),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () => action(),
            text: actionName,
            style: actionNameStyle ??
                TextStyle(
                  fontSize: fontSize ?? 12,
                  color: actionNameColor,
                ),
          ),
        ],
      ),
    );
  }
}
