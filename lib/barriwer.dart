import 'package:flutter/material.dart';

class MyBarrier extends StatelessWidget {
  MyBarrier(
      {Key? key,
      this.barrierWidth,
      this.barrierheight,
      required this.isThisBottomBarrier,
      this.barrierX})
      : super(key: key);

  final barrierWidth;
  final barrierheight;
  final barrierX;
  final bool isThisBottomBarrier;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment((2 *barrierX + barrierWidth) / (2 - barrierWidth), isThisBottomBarrier ? 1:-1),
        // color: Colors.green,
        width: MediaQuery.of(context).size.width * barrierWidth /2,
        height: MediaQuery.of(context).size.height * 3 /4 *  barrierheight /2 
      ),
    );
  }
}
