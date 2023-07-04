import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFD7E0FF),
        appBar: AppBar(centerTitle: true,
          backgroundColor: Colors.blueGrey[800],
          title: Text("Mutlu Bayramlar"),
        ),
        body: Center(
          child: Image.asset("images/mutlu_bayramlar.jpg")
        ),
      ),
    ),
  );
}
