import 'package:flutter/material.dart';


class Cell extends StatefulWidget {
  const Cell({Key? key}) : super(key: key);
  @override
  State<Cell> createState() => _CellState();
}

class _CellState extends State<Cell> {
  bool filled = false;
  bool crossed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: GestureDetector(
        child: Container(
          color: (filled? Colors.black87 : (crossed? Colors.red : Colors.blueGrey.shade50)),
        ),
        onTap: () => setState(() {if(!crossed) filled = !filled;}),
        onLongPress: () => setState(() {if(!filled) crossed = !crossed;}),
      )
    );
  }
}

class Map extends StatelessWidget {
  final int size;
  const Map({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context){
    // List<List<Cell>> cells = List.generate(size, (i) => [], growable: false);
    List <Cell> cells = [];

    // for(int i=0; i<size; i++){
    //   for(int j=0; j<size; j++){
    //     cells[i][j] = Cell();
    //   }
    // }

    // for (int i=0; i<size; i++) {
    //     for (int j=0; j<size; j++) {
    //         cells[i*size+j];
    //     }
    // }

    for(int i=0; i<size*size; i++)
      cells.add(Cell());

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: size),
        itemCount: cells.length,
        itemBuilder: ((context, index) {
          return cells[index];
        }),
      ),
    );
  }
}