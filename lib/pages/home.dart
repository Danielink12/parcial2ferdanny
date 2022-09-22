import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:parcial2ferdanny/themes/colores.dart';
import 'package:parcial2ferdanny/json/comidas.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int menu_activo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantalla(),
    );
  }

  //WIDGET PERSONALIZADO
  Widget pantalla() {
    //DECLARAMOS UN ARRALIST
    List items = [
      //ICONOS PARA UTILIZAR EN MIS ARREGLOS
      //PARA VERIFICAR QUE ICONOS USAN SPOTIFY
      //USAR PUB.DEV
      Icons.fastfood,
      Icons.breakfast_dining,
      Icons.local_pizza
    ];
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/img/logo.jpg"))),
              ),
            ),
          ),
          //ESPACIO
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Busqueda()],
            ),
          ),
          //ESPACIO
          SizedBox(
            height: 20,
          ),
          Text(
            "Ventas",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: rojo),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                //CONFIGURAMOS LAS DIMENSIONES DE LAS FILAS
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(comidas.length, (index) {
                  return Container(
                    child: Row(
                      children: [
                        //RETORNAMOS LOS ICONOS QUE UTILIZAREMOS, CON COLOR
                        IconButton(
                            onPressed: () {
                              setState(() {
                                menu_activo = index;
                              });
                            },
                            icon: Icon(
                              items[index],
                              color: menu_activo == index ? rojoclaro : negro,
                            )),
                        Text(
                          comidas[index]['title'],
                          style: TextStyle(
                              color: negro,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Combos",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: rojo),
          ),
          SizedBox(
            height: 30,
          ),
          Detalles()
        ],
      ),
    );
  }

  Widget Busqueda() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(FeatherIcons.search),
            hintText: "Busca tu combo...",
            fillColor: gris,
            filled: true),
      ),
    );
  }

  Widget Detalles() {
    return IndexedStack(index: menu_activo, children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: List.generate(hamburguesas.length, (index) {
              return Padding(
                //ESTABLECEMOS MARGENES PARA NUESTROS CARDVIEWS
                padding: const EdgeInsets.only(right: 30),
                child: GestureDetector(
                  //CONTIENE EL ALBUM DE CANCIONES - IMAGENES
                  child: Column(
                    children: [
                      Container(
                        //DIMENSIONES Y TAMAÑO
                        width: 180,
                        height: 180,
                        //AJUSTES DE COLORES Y FORMA
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(hamburguesas[index]['img']),
                                fit: BoxFit.cover),
                            color: negro,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //titulo de canciones o album
                      Text(
                        hamburguesas[index]['title'],
                        style: TextStyle(
                            color: negro,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      //descripciones de canciones o album
                      Container(
                        width: 175,
                        child: Text(
                          hamburguesas[index]['price'],
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: negro,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: List.generate(hotdogs.length, (index) {
              return Padding(
                //ESTABLECEMOS MARGENES PARA NUESTROS CARDVIEWS
                padding: const EdgeInsets.only(right: 30),
                child: GestureDetector(
                  //CONTIENE EL ALBUM DE CANCIONES - IMAGENES
                  child: Column(
                    children: [
                      Container(
                        //DIMENSIONES Y TAMAÑO
                        width: 180,
                        height: 180,
                        //AJUSTES DE COLORES Y FORMA
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(hotdogs[index]['img']),
                                fit: BoxFit.cover),
                            color: negro,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //titulo de canciones o album
                      Text(
                        hotdogs[index]['title'],
                        style: TextStyle(
                            color: negro,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      //descripciones de canciones o album
                      Container(
                        width: 175,
                        child: Text(
                          hotdogs[index]['price'],
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: negro,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: List.generate(tacos.length, (index) {
              return Padding(
                //ESTABLECEMOS MARGENES PARA NUESTROS CARDVIEWS
                padding: const EdgeInsets.only(right: 30),
                child: GestureDetector(
                  //CONTIENE EL ALBUM DE CANCIONES - IMAGENES
                  child: Column(
                    children: [
                      Container(
                        //DIMENSIONES Y TAMAÑO
                        width: 180,
                        height: 180,
                        //AJUSTES DE COLORES Y FORMA
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(tacos[index]['img']),
                                fit: BoxFit.cover),
                            color: negro,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //titulo de canciones o album
                      Text(
                        tacos[index]['title'],
                        style: TextStyle(
                            color: negro,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      //descripciones de canciones o album
                      Container(
                        width: 175,
                        child: Text(
                          tacos[index]['price'],
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: negro,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    ]);
  }
}
