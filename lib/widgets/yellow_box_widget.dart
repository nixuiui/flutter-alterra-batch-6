import 'package:flutter/material.dart';

class YellowBoxWidget extends StatelessWidget {

  final double width;
  final double height;

  const YellowBoxWidget({
    super.key,
    this.width = 100,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.black),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.transparent,
            offset: Offset(10, 10),
            blurRadius: 10,
            spreadRadius: -5,
          )
        ]
      ),
      child: const Center(child: Text('Content')),
    );
  }
}