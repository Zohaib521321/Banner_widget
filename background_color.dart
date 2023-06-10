import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Banner widget "),
        ),
        body:
        Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.yellow,
            height: 100,
            child: ClipRect(
              child: Banner(
                message: "hello",
                location: BannerLocation.topEnd,
                color: Colors.red,
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                  child: Center(
                    child: Text("Hello, banner!"),
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }

}