import 'package:flutter/material.dart';
import 'package:trivia_app/Pagina1.dart';

class Puntuacion extends StatefulWidget {
  final List useranswerlist;
  final List correctanswerlist;
  const Puntuacion(
      {Key? key, required this.useranswerlist, required this.correctanswerlist})
      : super(key: key);

  @override
  _PuntuacionState createState() => _PuntuacionState();
}

class _PuntuacionState extends State<Puntuacion> {
  int count = 0;
  int total = 0;

  @override
  void initState() {
    for (int i = 0; i < widget.correctanswerlist.length; i++) {
      if (widget.correctanswerlist.elementAt(i) ==
          widget.useranswerlist.elementAt(i)) {
        count++;
      }
    }
    count *= 10;
    total = widget.correctanswerlist.length * 10;
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle body = Theme.of(context).textTheme.bodyText1!;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0.0,
          centerTitle: true,
          title: Text('Resultado'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(48),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.indigoAccent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withAlpha(60),
                      blurRadius: 6.0,
                      spreadRadius: 4.0,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text("Score",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text('${count} / ${total}',
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              width: 200,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Colors.blueGrey[800],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Principal(),
                      ),
                    );
                  },
                  child: Text(
                    'Retake Test',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ));
  }
}