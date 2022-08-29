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
        child: Column(
          Children: <Widget> [
            minimum: const EdgeInsets.symmetric(vetical: 10),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200,200),
                  
                ),
                onPressed: (){

                },
                child: Text(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}