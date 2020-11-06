import 'package:flutter/material.dart';
import 'package:flutter2/pages/photo.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: "Siravit",
      routes: {'/photo-page':(context) => PhotoPage()},

    );
  }
}
