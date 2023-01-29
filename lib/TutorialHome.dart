import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/MyButton.dart';

class TutorialHome extends StatelessWidget {
  const TutorialHome({ super.key });

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          onPressed: null,
        ),
        title: const Text('Tutorial home'),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search), tooltip:"Search")
        ]),
        body: const Center(
          child: MyButton(),
        ),
        floatingActionButton: const FloatingActionButton(onPressed: null, tooltip: "Add", 
        child: Icon(Icons.add),),
    );
  }
}