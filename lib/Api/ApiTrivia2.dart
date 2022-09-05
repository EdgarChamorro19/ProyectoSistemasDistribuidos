import 'dart:developer';
import 'dart:convert';
import 'package:trivia_app/Model/Preguntas.dart';
import 'package:http/http.dart' as http;
import 'package:trivia_app/Model/Preguntas.dart';
import 'package:translator/translator.dart';

class ApiTrivia2 {
  Future<List<Results>?> getStates() async {
    Uri url = Uri.parse("https://opentdb.com/api.php?amount=5&category=21&difficulty=medium&type=boolean");

    var response = await http.get(url);
    if (response.statusCode == 200) {
      log('api worked ${response.body}');
      var body = response.body;
      var statesJsonArray = json.decode(body)['results'];

      try {
        List<Results> results =
            (statesJsonArray as List).map((e) => Results.fromJson(e)).toList();

        return results;
      } catch (e) {
        log('try failed $e');
      }
    } else {
      log('api request failed ${response.body}');

      return null;
    }
  }
}
