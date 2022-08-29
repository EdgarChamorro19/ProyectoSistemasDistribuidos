import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inicio(
      ),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: <Widget> [
            Flexible(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal:20 ,vertical:50),
                child: Image.asset("imagenes/img4.png",height: 325,),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
              child: Text("Bienvenidos a Nuestra Aplicacion",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize:30)
                      ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(340, 55),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))
                  ),
                ),
                onPressed: (){

                },
                child: Text("Jugar",style: TextStyle(fontWeight: FontWeight.bold, fontSize:15)),
              ),
            ),
          ],
        )
      )
    );
  }
}
