import 'question.dart';
class Quiz_brain{
  int _num=0;
  List<Question> _questions=[
  Question(ques: 'Some cats are actually allergic to humans',ans: true),
  Question(ques: 'You can lead a cow down stairs but not up stairs.',ans: false),
  Question(ques: 'Approximately one quarter of human bones are in the feet.', ans: true),
  Question(ques: 'A slug\'s blood is green.', ans: true),
  Question(ques: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', ans: true),
  Question(ques: 'It is illegal to pee in the Ocean in Portugal.', ans: true),
  Question(
  ques: 'No piece of square dry paper can be folded in half more than 7 times.',
  ans: false),
  Question(
  ques: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
  ans: true),
  Question(
  ques: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
  ans: false),
  Question(
  ques: 'The total surface area of two human lungs is approximately 70 square metres.',
  ans: true),
  Question(ques: 'Google was originally called \"Backrub\".', ans: true),
  Question(
  ques: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
  ans: true),
  Question(
  ques: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
  ans: true)
  ];
  void nextques(){
    if(_num<_questions.length-1) {
      _num++;
      print(_num);
      print(_questions.length);
    }
  }
  String getquestion(){
    return _questions[_num].ques;
  }
  bool getans(){
    return _questions[_num].ans;
  }
  bool quizend(){
    if(_num==_questions.length-1){
      print('true');
      return true;
    }
    print('false');
    return false;
  }

  void reset(){
    _num=0;
  }
}