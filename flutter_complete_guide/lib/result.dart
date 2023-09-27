import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;
  final int resultScore;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'You are awesome';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Good';
    } else {
      resultText = 'Bad Result';
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
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
