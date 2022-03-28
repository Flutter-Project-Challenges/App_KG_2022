//! math screen

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/check_answer_button.dart';
import '../Components/hint_text.dart';
import '../Components/math_choice_button.dart';

class MathPage extends StatefulWidget {
  const MathPage({Key? key}) : super(key: key);

  @override
  _MathPageState createState() => _MathPageState();
}

class _MathPageState extends State<MathPage> {
  int _a = 0, _b = 0; // equation variables
  int _result = 0; //correct answer of the equation
  bool _torf = false; // true if the selected button contains the right answer
  String _massage = ""; // show the right answer
  String _operation = ""; //operation in equation + or -
  var _r = List.generate(
      2,
      (index) =>
          Random().nextInt((10))); // random 2 numbers to generate equation
  var _postion = List.generate(
      1,
      (index) => Random().nextInt(
          (100))); // to make random postison for true and false answers
  var _operations = List.generate(
      1,
      (index) => Random()
          .nextInt((2))); //random number to decide if the operation is + or -
  var _notT = List.generate(
      1,
      (index) =>
          Random().nextInt((20))); //random number to generate false answer

//! check ,show result  and generate a new equation
  void onClick() {
    if (_torf == true) {
      _massage = "True , $_a $_operation $_b = $_result";
    } else {
      _massage = "False , $_a $_operation $_b = $_result";
    }
    setState(() {
      _r = List.generate(2, (index) => Random().nextInt((10)));
      _postion = List.generate(1, (index) => Random().nextInt((100)));
      _operations = List.generate(1, (index) => Random().nextInt((2)));
      _notT = List.generate(1, (index) => Random().nextInt((20)));
      _torf = false;
    });
  }

//! arrange and calculate the equation
  void calcutaions() {
    if (_operations[0] == 0) {
      _operation = "+";
      _a = _r[0];
      _b = _r[1];
      _result = _a + _b;
    } else if (_operations[0] == 1) {
      _operation = "-";
      if (_r[0] >= _r[1]) {
        _a = _r[0];
        _b = _r[1];
      } else {
        _operation = "-";
        _a = _r[1];
        _b = _r[0];
      }
      _result = _a - _b;
    }
    while (_notT[0] == _result) {
      _notT = List.generate(1, (index) => Random().nextInt((20)));
    }
  }

  @override
  Widget build(BuildContext context) {
    calcutaions();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: ListView(
            children: [
              Image.asset(
                'assets/Images/Math-Girl-.png',
                height: 210,
              ),
              Column(
                children: [
                  Text(
                    "$_a $_operation $_b = ? ",
                    style: GoogleFonts.actor(fontSize: 40, color: Colors.pink),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 9.0),
                child: hintText(
                    hint: "Click on the result then check if true or false :"),
              ),
              Row(
                children: [
                  MathChoiceButton(
                    primary: Colors.amber,
                    title: _postion[0] % 3 == 1 ? '$_result' : '${_notT[0]}',
                    onClick: () => () {
                      if (_postion[0] % 3 == 1) {
                        _torf = true;
                      } else {
                        _torf = false;
                      }
                    },
                  ),
                  MathChoiceButton(
                    primary: Colors.purple,
                    title: _postion[0] % 3 != 1 ? '$_result' : '${_notT[0]}',
                    onClick: () => () {
                      if (_postion[0] % 3 != 1) {
                        _torf = true;
                      } else {
                        _torf = false;
                      }
                    },
                  )
                ],
              ),
              CheckButton(
                onClick: () => onClick,
              ),
              const SizedBox(height: 30),
              Center(
                child: Text(_massage,
                    style: GoogleFonts.aldrich(
                        fontSize: 20,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
