import 'package:animation/image_data.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

