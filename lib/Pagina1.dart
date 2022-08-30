import 'package:flutter/material.dart';

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
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(340, 55),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pincipalpage()));
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