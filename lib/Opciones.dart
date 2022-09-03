import 'package:flutter/material.dart';
import 'package:trivia_app/Model/Respuestas.dart';
import 'package:trivia_app/VerPreguntas.dart';

class Opciones extends StatefulWidget {
  final List wrongRightList;
  final OptionSelectedCallback onOptionsSelected;
  final int selectedPosition;
  final int index;

  Opciones({
    required this.wrongRightList,
    required this.onOptionsSelected,
    required this.selectedPosition,
    required this.index,
  });

  @override
  _OpcionesState createState() => _OpcionesState();
}

class _OpcionesState extends State<Opciones> {
  int selectedIndex = 99;

  @override
  void initState() {
    super.initState();
    // Shuffleright a = Shuffleright(
    //     Shuffler: (list) {
    //       widget.finalWrongrightlist = list;
    //     },
    //     wrongright: widget.wrongright);
    // a.mix();
    selectedIndex = widget.selectedPosition;
    print("positioN here is $selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.wrongRightList[widget.index].length,
        itemBuilder: (context, position) {
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 6),
            child: CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Colors.cyan,
              selectedTileColor: Colors.white,
              selected: selectedIndex == position,
              title: Text(
                  '${widget.wrongRightList[widget.index].elementAt(position)}'),
              value: selectedIndex == position,
              onChanged: (bool? newValue) {
                widget.onOptionsSelected(
                    widget.wrongRightList[widget.index].elementAt(position));
                setState(
                  () {
                    selectedIndex = position;
                  },
                );
              },
            ),
          );
        },
      ),
    );
    ;
  }
}