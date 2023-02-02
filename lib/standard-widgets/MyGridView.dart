import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildGrid() => GridView.count(
    // maxCrossAxisExtent: 400, // used with GridView.extent
    crossAxisCount: 3, // used with GridView.count
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    padding: const EdgeInsets.all(4),
    children: _buildGridTileList(25));

List<Container> _buildGridTileList(int count) => List.generate(
    count,
    (index) => Container(
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(width: 5, color: Colors.purple),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        // child: const Icon(Icons.adb, color: Colors.amber),
        child: GridTile(
          footer: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(color: Colors.transparent),
              alignment: Alignment.center,
              child: Text("Icon $index",
                  selectionColor: Colors.white,
                  style: const TextStyle(color: Colors.white))),
          header: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(color: Colors.transparent),
              alignment: Alignment.center,
              child: const Text("ADB",
                  selectionColor: Colors.white,
                  style: TextStyle(color: Colors.white))),
          child: const Icon(Icons.adb, color: Colors.amber, size: 100),
        )));
