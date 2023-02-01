import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildImageColumn() {
  return Container(
    decoration: const BoxDecoration(color: Colors.black26),
    child: Column(
      children: [
      _buildDecoratedImage(1),     
      Expanded(child: Icon(Icons.supervised_user_circle_sharp)),
    ],)
  );
}

Widget _buildDecoratedImage(int imageIndex) => Expanded(
  child: Container(
    decoration: BoxDecoration(

    ),
    child:   Expanded(child: Icon(Icons.alarm, color: Colors.blue[600],),),  
  ),
);