import 'package:flutter/material.dart';
import 'package:parcial2ferdanny/pages/principal.dart';

class parcial2 extends StatelessWidget {
  const parcial2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pruebaParcial2',
      home: principal(),
    );
  }
}
