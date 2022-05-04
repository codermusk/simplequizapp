import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answers;

  Answers(this.selectHandler, this.answers);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.red,
        child: Text(answers),
        onPressed: selectHandler,
      ),
    );
  }
}
