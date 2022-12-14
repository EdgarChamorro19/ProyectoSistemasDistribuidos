import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_app/Api/ApiTrivia.dart';
import 'package:trivia_app/VerPreguntas.dart';
import 'package:trivia_app/Model/Respuestas.dart';
import 'package:trivia_app/Model/Preguntas.dart';
import 'dart:math';

typedef void Randomise(List options);

class Pagina2 extends StatefulWidget {
  Pagina2({Key? key}) : super(key: key);
  List wrongRightList = [];

  @override
  _Pagina2State createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  final ApiTrivia _apitrivia = ApiTrivia();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text('Preguntas',style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold)),
      ),
      body: _futureWidget(),
    );
  }

  _futureWidget() {
    return FutureBuilder(
      future: _apitrivia.getStates(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List results = snapshot.data as List;
          RespuestasCorrecta(
              result: results,
              Shuffler: (options) {
                widget.wrongRightList = options;
              });

          return QuestionsPageView(
              results: results, wrongRightList: widget.wrongRightList);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}