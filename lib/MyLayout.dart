import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Image.asset(
              "images/deep-dark-nothing.png",
              package: "flutter_widgets",
              // fit: BoxFit.fitHeight,
            ),
            flex: 2,
          ),
          Expanded(
            child: Image.asset(
              "images/regex.PNG",
              package: "flutter_widgets",
              // fit: BoxFit.fitHeight,
              width: 100,
            ),
            flex: 2,
          ),
          Expanded(
              child: Image.asset(
            "images/super-rib.png",
            package: "flutter_widgets",
            // fit: BoxFit.fitHeight,
          ))
        ],
        textDirection: TextDirection.ltr);
    // return Image.asset("images/deep-dark-nothing.png", fit:BoxFit.cover, package: 'flutter_widgets',);
    // return const Icon(Icons.star, color: Colors.redAccent);
  }
}


//  Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Icon(Icons.abc),
//         Icon(Icons.safety_check),
//         Icon(Icons.zoom_out),
//         Icon(Icons.wrap_text),
//         Icon(Icons.ac_unit),
//         Row(children: [
//           Icon(Icons.accessibility_new),
//           Icon(Icons.account_balance),
//           Icon(Icons.dangerous, color: Colors.red,)
//         ],
//         mainAxisAlignment: MainAxisAlignment.center,)
//         // Image.asset("images/deep-dark-nothing.png",  package: "flutter_widgets", fit: BoxFit.cover,width: 200),
//         // Image.asset("images/regex.PNG", package: "flutter_widgets", fit:BoxFit.cover,  width: 200)
//     ],

