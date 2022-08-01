import 'package:flutter/material.dart';

class VertSide extends StatefulWidget {
  const VertSide({Key? key}) : super(key: key);

  @override
  State<VertSide> createState() => _VertSideState();
}

class _VertSideState extends State<VertSide> {
  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        height: size*.2,
        width: size*.64,  
        color: Colors.blueGrey.shade200,
      ),
    );
  }
}



class HoriSide extends StatefulWidget{
  final int gridSize;
  const HoriSide({Key? key, required this.gridSize}) : super(key: key);

  @override
  State<HoriSide> createState() => _HoriSideState();
}

class _HoriSideState extends State<HoriSide> {
  @override
  Widget build(BuildContext context){
    final double size = MediaQuery.of(context).size.width;
    var numOfSideCells = (widget.gridSize/2).ceil();

    return ClipRRect(
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
      child: Container(
        height: size*.64,
        width: size*.2,  
        color: Colors.blueGrey.shade200,


        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: ListView.builder(
            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: numOfSideCells,),
            
            // physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.gridSize,
            itemBuilder: (context, index){
              return Container(
                height: (MediaQuery.of(context).size.width*0.6)/widget.gridSize,
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: SideNumbers(),
              );
            }
          ),
        ),
      ),
    );
  }
}



class SideNumbers extends StatefulWidget {
  const SideNumbers({Key? key,}) : super(key: key);

  @override
  State<SideNumbers> createState() => _SideNumbersState();
}

class _SideNumbersState extends State<SideNumbers> {
  TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        border: Border.all(width: 2, color: Colors.black54),
      ),
      child: TextField(controller: controller,),
    );
  }
}