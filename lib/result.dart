import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  String get resultPhrase {
    var resultText = "You Did It";
    if (resultScore <= 8) {
      resultText = "You are Awesome and Innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likable";
    } else if (resultScore <= 16) {
      resultText = "You are Strange";
    } else {
      resultText = "Tum Hamaar Gola ke Naahi ho!!!";
    }
    return resultText;
  }

  Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(100),
      
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            
            onPressed: resetHandler,
            textColor: Colors.blue,
            child: Text('Restart Quiz?'),
          )
        ],
      ),
    );
  }
}
