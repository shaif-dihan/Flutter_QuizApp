import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        child: Text(answerText),
        onPressed: selectHandler,
        color: Colors.blue,
        textColor: Colors.black,
        // style: ElevatedButton.styleFrom(
        //   primary: Colors.blue,
        // ),
      ),
    );
  }
}
