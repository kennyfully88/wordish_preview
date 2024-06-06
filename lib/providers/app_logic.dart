import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:wordish/enums/question_result.dart';
import 'package:wordish/providers/images_set.dart';

class AppLogic extends ChangeNotifier {
  bool _appInit = false;
  bool get appInit => _appInit;

  bool _quizEnded = false;
  bool get quizEnded => _quizEnded;

  int _currentQuestionCounter = 1;
  int get currentQuestionCounter => _currentQuestionCounter;

  String _pictureResult = 'apple';
  String get pictureResult => _pictureResult;

  final List _currentAnswerChoices = ['', ''];
  List get currentAnswerChoices => _currentAnswerChoices;

  final List _questionMeterItems = [
    {'id': 1, 'correctness': QuestionResult.yet},
    {'id': 2, 'correctness': QuestionResult.yet},
    {'id': 3, 'correctness': QuestionResult.yet},
    {'id': 4, 'correctness': QuestionResult.yet},
    {'id': 5, 'correctness': QuestionResult.yet},
    {'id': 6, 'correctness': QuestionResult.yet},
    {'id': 7, 'correctness': QuestionResult.yet},
    {'id': 8, 'correctness': QuestionResult.yet},
    {'id': 9, 'correctness': QuestionResult.yet},
    {'id': 10, 'correctness': QuestionResult.yet},
  ];
  List get questionMeterItems => _questionMeterItems;

  void initApp() {
    _appInit = true;
  }

  void _nextQuestion() {
    _currentQuestionCounter++;
  }

  void setQuestion(ImagesSet imagesSet) {
    List imagesStringsBuffer = imagesSet.imageStrings.keys.toList();
    final int imagesSetRng = Random().nextInt(imagesSet.imageStrings.length);
    final int buttonsRng = Random().nextInt(2);
    _pictureResult = imagesStringsBuffer[imagesSetRng];
    int answer2Rng = Random().nextInt(imagesStringsBuffer.length - 1);

    if (buttonsRng == 0) {
      _currentAnswerChoices[0] = _pictureResult;
      imagesStringsBuffer.remove(_pictureResult);
      _currentAnswerChoices[1] = imagesStringsBuffer[answer2Rng];
    } else {
      _currentAnswerChoices[1] = _pictureResult;
      imagesStringsBuffer.remove(_pictureResult);
      _currentAnswerChoices[0] = imagesStringsBuffer[answer2Rng];
    }

    if (_appInit) notifyListeners();
  }

  void checkAnswer(int answerChoice, ImagesSet imagesSet) {
    if (_quizEnded) return;

    if (_pictureResult == currentAnswerChoices[answerChoice]) {
      _questionMeterItems[currentQuestionCounter - 1]['correctness'] =
          QuestionResult.right;
    } else {
      _questionMeterItems[currentQuestionCounter - 1]['correctness'] =
          QuestionResult.wrong;
    }

    if (_currentQuestionCounter >= 10) {
      _quizEnded = true;
      notifyListeners();
    } else {
      setQuestion(imagesSet);
      _nextQuestion();
    }
  }

  void resetQuiz(imagesSet) {
    _currentQuestionCounter = 1;
    for (Map item in _questionMeterItems) {
      item['correctness'] = QuestionResult.yet;
    }

    _quizEnded = false;

    setQuestion(imagesSet);
  }
}
