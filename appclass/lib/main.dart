import 'package:appclass/RegisteredForm/personForm.dart';
import 'package:appclass/Registration_Form.dart';
import 'package:appclass/pickProfileimg.dart';
import 'package:appclass/qrgenerator.dart';
import 'package:appclass/samplewidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Rform(),
      // home: Qr_gen(),
      // home: pickImg(),
      // home: Sample(),
      home: PersonForm(),
    );
  }
}
