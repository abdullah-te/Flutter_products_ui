// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_ui/ui1.dart';
import 'package:product_ui/ui2.dart';
import 'package:product_ui/ui3.dart';


main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: UI3(),
      )
    );
  }
}
