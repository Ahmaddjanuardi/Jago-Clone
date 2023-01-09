import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jago_bank/views/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jago',
      // theme: ThemeData(
      //   primarySwatch: Colors.amber,
      // ),
      home: HomePage(),
    );
  }
}
