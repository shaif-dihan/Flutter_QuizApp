import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;

    if (resultScore >= 90) {
      resultText = 'You are awesome and great!';
    } else if (resultScore >= 80) {
      resultText = 'WOW';
    } else if (resultScore >= 70) {
      resultText = 'Cool';
    } else {
      resultText = 'BAD!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetHandler, child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
