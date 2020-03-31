import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetFunc;
  Result(this.resultScore, this.resetFunc);

  String get resultPhrase{
    return 'Your score is: ' + resultScore.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase, style: TextStyle(fontSize: 20, color: Colors.blueAccent),),
          FlatButton(child: Text('Reset Quiz'), onPressed: resetFunc, color: Colors.orangeAccent,)
        ],
      ),
    );
  }
}
