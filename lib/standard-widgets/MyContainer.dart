import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildImageColumn() {
  return Container(
    width: 100,
    decoration: const BoxDecoration(color: Colors.black26),
    child: Column(
      children: [
      _buildDecoratedImage(1),     
      Expanded(child: Icon(Icons.supervised_user_circle_sharp)),
      _buildDecoratedImage(2),
      _buildDecoratedImage(3)
    ],)
  );
}

Widget _buildDecoratedImage(int imageIndex) => Expanded(
  child: Container(
    decoration: BoxDecoration(
      border: Border.all(width: 10, color: Colors.yellow[900]!),
      borderRadius: const BorderRadius.all(Radius.circular(4))
    ),
    margin: const EdgeInsets.all(4),
    child:   Expanded(child: Icon(Icons.alarm, color: Colors.blue[600],),),  
  ),
);