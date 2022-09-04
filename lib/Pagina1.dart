import 'package:flutter/material.dart';
import 'package:trivia_app/VerPreguntas.dart';
import 'package:trivia_app/Pagina2.dart';
import 'package:trivia_app/Pagina3.dart';

class Pincipalpage extends StatelessWidget {
  const Pincipalpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(
      ),
    );
  }
}

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 110, horizontal: 45),
        child: Column(
          children: <Widget> [
            Container(
              width: MediaQuery.of(context).size.width * 0.62,
              height: MediaQuery.of(context).size.height * 0.3,
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(340, 55),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pagina2()));
                },
                child: Text("Verdadero/Falso",style: TextStyle(fontWeight: FontWeight.bold, fontSize:17)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.62,
              height: MediaQuery.of(context).size.height * 0.3,
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(340, 55),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pagina3()));
                },
                child: Text("Opcion Multiple",style: TextStyle(fontWeight: FontWeight.bold, fontSize:17)),
              ),
            ),
          ],
        )
      )
    );
  }
}