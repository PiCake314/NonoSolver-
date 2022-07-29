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
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        height: size*.2,
        width: size*.64,  
        color: Colors.blueGrey.shade200,
      ),
    );
  }
}



class HoriSide extends StatefulWidget {
  const HoriSide({Key? key}) : super(key: key);

  @override
  State<HoriSide> createState() => _HoriSideState();
}

class _HoriSideState extends State<HoriSide> {
  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
      child: Container(
        height: size*.64,
        width: size*.2,  
        color: Colors.blueGrey.shade200,
      ),
    );
  }
}

