import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500], size: 20),
    Icon(Icons.star, color: Colors.green[500], size: 20),
    Icon(Icons.star, color: Colors.green[500], size: 20),
    const Icon(Icons.star, color: Colors.black, size: 20),
    const Icon(Icons.star, color: Colors.black, size: 20),
  ],
);

final ratings = Container(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        const Text('170 Reviews',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                )),
      ],
    ));

const descriptionTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    height: 2);

final iconList = DefaultTextStyle.merge(
    style: descriptionTextStyle,
    child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text("PREP:"),
                const Text("25 min")
              ],
            ),
            Column(children: [
              Icon(Icons.timer, color: Colors.green[500]),
              const Text("COOK:"),
              const Text("1 hr")
            ]),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text("FEEDS:"),
                const Text("4-6")
              ],
            )
          ],
        )));

var titleText = const Text("Strawberry Pizza", style: descriptionTextStyle);
var subText = const Text(
    "Strawberry Pizza is a meringue-based desert named after the Russian ballerina Anna Pavlova.");
final Container leftColumn = Container(
    padding: const EdgeInsets.all(5),
    child: Column(
      children: [titleText, subText, ratings, iconList],
    ));

var mainImage = Expanded(
    child: Image.asset("images/super-rib.png", package: "flutter_widgets", fit: BoxFit.fitHeight));

class Ratings extends StatelessWidget {
  const Ratings({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          child: Card(            
              child: Row(                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: leftColumn),
                  mainImage
                ],
      ))),
    );
  }
}
