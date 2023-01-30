import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});
  @override
  Widget build(BuildContext context) {
    // return Image.asset("images/deep-dark-nothing.png", fit:BoxFit.cover, package: 'flutter_widgets',);
    return const Icon(Icons.star, color: Colors.redAccent);
  }
}
