import 'question.dart';

class QuizBrain {
  int _question_num = 0;
  List<Question> _questionBank = [
    Question(q: '13 это простое число', a: true),
    Question(q: 'Ежи не впадают в спячку', a: false),
    Question(q: 'Люди не могут дышать и глотать одновременно', a: true),
    Question(q: 'Столетняя война продолжалась сто лет', a: false),
    Question(q: 'У взрослых меньше костей, чем у младенцев', a: true),
    Question(q: 'Верхушка Эйфелевой башни отклоняется от Солнца', a: true),
    Question(q: 'Страусы прячут голову в песок', a: false),
    Question(
        q: 'Хамелеоны меняют окраску, чтобы замаскироваться под окружающую местность',
        a: false),
    Question(
        q: 'Куры глотают камни, получая из них полезные минералы', a: false),
    Question(q: 'У птиц-хищников самка сильнее и крупнее самца', a: true)
  ];

  void nextQuestion() {
    if (_question_num < _questionBank.length - 1) {
      _question_num++;
    }
  }

  String getQuestionText() {
    return _questionBank[_question_num].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_question_num].questionAnswer;
  }

  bool isFinished() {
    if (_question_num >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _question_num = 0;
  }
}
