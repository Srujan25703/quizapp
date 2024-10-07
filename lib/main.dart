import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Quiz_brain qb = Quiz_brain();
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: quizler()
          ),
        ),
      ),
    );
  }
}

class quizler extends StatefulWidget {
  const quizler({super.key});

  @override
  State<quizler> createState() => _quizlerState();
}

class _quizlerState extends State<quizler> {
  List<Widget> scorekeeper=[];

  void checkans(bool userans){
    if(qb.quizend()){
      Alert(
        context: context,
        title: "Finished",
        desc: "your quiz has been finished",
      ).show();
      qb.reset();
      scorekeeper=[];
    }
    else{
      bool ans = qb.getans();
      if(ans==userans){
        scorekeeper.add(Icon(Icons.check,color: Colors.green,));
      }
      else{
        scorekeeper.add(Icon(Icons.close,color: Colors.red,));
      }
      qb.nextques();
    }

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
          child: Text(qb.getquestion(),style: TextStyle(
            fontSize:25,
            color: Colors.white
          ),
          ),
        ),
        ),
        Expanded(child: Padding(
          padding: EdgeInsets.all(10),
          child: TextButton(
            child: Text('TRUE',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green)
            ),
            onPressed: (){
              setState(() {
                checkans(true);
              });

            },
          ),
        ),
        ),
        Expanded(child: Padding(
          padding: EdgeInsets.all(10),
          child: TextButton(
            child: Text('FALSE',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)
            ),
            onPressed: (){
              setState(() {
                checkans(false);
              });

            },
          ),
        ),
        ),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}
