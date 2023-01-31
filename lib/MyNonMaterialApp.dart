import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNonMaterialApp extends StatelessWidget {
  const MyNonMaterialApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Text(
        "Hello Dear",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 32, color: Colors.black87, fontStyle: FontStyle.italic)
      )
    );
  }
}