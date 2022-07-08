// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final reset;

  final int resultScore;

  Result(this.resultScore, this.reset);

  String get ResultPhrase {
    String resulttext = 'You Did It...';
    if (resultScore <= 8) {
      resulttext = 'you are awesome bro';
    } else if (resultScore <= 16) {
      resulttext = 'nice brother..!!!';
    } else if (resultScore <= 18) {
      resulttext = 'strange';
    } else {
      resulttext = 'you are Good';
    }
    return resulttext;
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            ResultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'ResetButton',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            textColor: Colors.pink,
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
