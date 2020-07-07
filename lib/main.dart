import 'package:flutter/material.dart';
import 'package:memenator/pages/home.dart';
import 'package:memenator/pages/loading.dart';
import 'package:memenator/pages/editor.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Loading(),
      "/home": (context) => Home(),
      "/editor": (context) => Editor()
    },
  ));
}