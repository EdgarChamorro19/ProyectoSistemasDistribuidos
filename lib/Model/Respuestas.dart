import 'package:flutter/material.dart';
import 'package:trivia_app/Pagina2.dart';
import 'package:trivia_app/second_page.dart';
import 'package:trivia_app/Opciones.dart';


class RespuestasCorrecta{
  late final List result;
  late final Randomise Shuffler;
  final List wrongRightList = [];

  RespuestasCorrecta({required this.result, required this.Shuffler}){
    wrongRightList.addAll(result.map((e) => []));
    for (int i = 0; i < result.length; i++) {
      List wrong = result.elementAt(i).incorrect_answers;
      List right = [result.elementAt(i).correct_answer];
      wrongRightList[i] = wrong + right;
      wrongRightList[i].shuffle();
    }
    Shuffler(wrongRightList);
  }

}