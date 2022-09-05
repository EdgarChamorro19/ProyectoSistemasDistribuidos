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
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text('Opciones',style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 40, horizontal: 45),
        child: Column(
          children: <Widget> [
            Container(
              width: MediaQuery.of(context).size.width * 0.62,
              height: MediaQuery.of(context).size.height * 0.3,
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pagina2()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("imagenes/img3.png", fit: BoxFit.cover),
                    Text("Opcion Multiple")
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.62,
              height: MediaQuery.of(context).size.height * 0.3,
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
               child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pagina2()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("imagenes/imginicio.png", fit: BoxFit.cover),
                    Text("Opcion Multiple"),
                  ],
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}