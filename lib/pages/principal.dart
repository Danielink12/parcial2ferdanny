import 'package:flutter/material.dart';
import 'package:parcial2ferdanny/themes/colores.dart';
import 'home.dart';

//CLASE DINAMICA
class principal extends StatefulWidget {
  principal({Key? key}) : super(key: key);

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    //CONTENIDO DE LA APP
    return Scaffold(
      //NUESTRA PANTALLA COLOR NEGRO
      backgroundColor: primario,
      //Contiene TODO EL DISEÑO DE LA APP
      body: home(),
    );
  }
}
