import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_app/Api/ApiTrivia2.dart';
import 'package:trivia_app/VerPreguntas.dart';
import 'package:trivia_app/Model/Respuestas.dart';
import 'package:trivia_app/Model/Preguntas.dart';
import 'dart:math';

typedef void Randomise(List options);

class Pagina3 extends StatefulWidget {
  Pagina3({Key? key}) : super(key: key);
  List wrongRightList = [];

  @override
  _Pagina3State createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3> {
  final ApiTrivia2 _apitrivia2 = ApiTrivia2();

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
      future: _apitrivia2.getStates(),
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