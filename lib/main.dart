import 'package:mini_insta_demo/Home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      title: 'اینستاگرام',
      home: Directionality(textDirection: TextDirection.rtl, child: Home()),
    );
  }
}
