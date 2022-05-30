import 'QuizQues.dart';

class Quizbrain {
  int alert = 0;
  int _n = 0;
  List<Question> Qbank = [
    Question("a", true),
    Question("b", false),
    Question("c", true),
    Question("d", false),
    Question("e", true),
    Question("f", true),
    Question("g", true),
    Question("h", false),
    Question("i", true),
    Question("j", false),
    Question("k", true),
  ];

  String getquestTxt() {
    return Qbank[_n].questiontext;
  }

  bool getcorrectans() {
    return Qbank[_n].questionans;
  }

  void nextquestion() {
    if (_n < Qbank.length - 1) {
      _n++;
    } else {
      alert = 1;
    }
  }

  void reset() {
    _n = 0;
  }
}
