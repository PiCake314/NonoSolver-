import 'package:flutter/material.dart';
import 'package:nono_solver/Side.dart';
import 'Cell.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text("Nono-Solver!"),
        ),

        body: Mapper(gridSize: 10,),
      ),
    );
  }
}


class Mapper extends StatelessWidget{
  final int gridSize;
  const Mapper({Key? key, required this.gridSize}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final double size = MediaQuery.of(context).size.width;
    
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: size*.1),
              child: VertSide(),
            ),

            Padding(
              padding: EdgeInsets.only(right: size*.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HoriSide(gridSize: gridSize,),

                  Container(
                    height: size*.64,
                    width: size*.64,
                    decoration: BoxDecoration(border: Border.all(width: 5)),
                    child: Map(size: gridSize),
                  ),
                ],
              ),
            ),

            ElevatedButton(onPressed: ()=>print(size), child: Text("Print"),),
          ],
        ),
      ),
    );
  }
}