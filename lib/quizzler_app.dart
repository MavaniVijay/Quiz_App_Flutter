import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//import 'questions.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

class Quizzler1 extends StatefulWidget {
  @override
  _Quizzler1State createState() => _Quizzler1State();
}

class _Quizzler1State extends State<Quizzler1> {
  //list make a shopkeper
  List<Icon> shopkeper = [];
  void answer(bool getAnswer) {
    setState(() {
      bool correctAnswer = quizBrain.getAnswer();
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        quizBrain.reset(); //reset app

        shopkeper = []; //check this items.
      } else {
        if (correctAnswer == getAnswer) {
          shopkeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          shopkeper.add(
            Icon(
              Icons.clear,
              color: Colors.red,
            ),
          );
        }
        quizBrain.nextQuestion();
      }
    });
  }

  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.',
  // ];
  // List<bool> answers = [false, true, true];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child: Text(
                    quizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        shadows: [
                          Shadow(color: Colors.white, blurRadius: 3),
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      child: FlatButton(
                        color: Colors.green,
                        onPressed: () {
                          answer(true);
                        },
                        child: Text(
                          'True',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              shadows: [
                                Shadow(color: Colors.white, blurRadius: 1),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      child: FlatButton(
                        color: Colors.red,
                        onPressed: () {
                          answer(false);
                        },
                        child: Text(
                          'False',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(color: Colors.white, blurRadius: 1),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: shopkeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
