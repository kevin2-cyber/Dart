import 'package:flutter/material.dart';
import 'package:practice9/question.dart';

void main() => runApp(const Quizler());

class Quizler extends StatelessWidget {
  static const String title = 'Quizler';
  const Quizler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Icon> scoreKeeper = [];

  /*List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];

  Question q1 = Question(q:'You can lead a cow down stairs but not up stairs.', a: false);

  List<bool> answers =[
    false,
    true,
    true
  ];*/

  List<Question> questionBank = [
    Question(q:'You can lead a cow down stairs but not up stairs.', a: false),
    Question(q:'Approximately one quarter of human bones are in the feet.', a: true),
    Question(q:'A slug\'s blood is green.', a: true)
  ];

  int questionNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
         Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNum].questionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: (){
                //The user picked true.

                bool correctAns = questionBank[questionNum].questionAnswer;

                if(correctAns == true){
                  print('user picked right');
                } else {
                  print('user got wrong');
                }

                setState(() {
                  questionNum++;
                });
              },
            ),
          ),
        ),
         Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                //The user picked false.

                bool correctAns = questionBank[questionNum].questionAnswer;

                if(correctAns == true){
                  print('user picked right');
                } else {
                  print('user got wrong');
                }
                questionNum++;
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}


/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/