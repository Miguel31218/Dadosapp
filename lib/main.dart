import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      color: Colors.black,
      home: Scaffold(
        body: SafeArea(
            child: box(
          "https://concepto.de/wp-content/uploads/2015/03/paisaje-e1549600034372.jpg",
          titicaca("LAGO TITICACA", "PERU", "10"),
          [
            accion(Icons.call, "CALL"),
            accion(Icons.near_me, "ROUTE"),
            accion(Icons.share, "SHARE"),
          ],
          Text(
              "El Titicaca (en aimara: Titiqaqa, de titi, 'gato salvaje' y qaqa, 'cabello cano'; en referencia al gato andino gris) es el lago navegable más alto del mundo, ubicado en los Andes centrales, dentro de la meseta del Collao, a una altitud media de 3812 m s. n. m. entre los territorios de Bolivia y Perú. Posee un área de 8300 km² de los cuales el 56 % (4996 km²) corresponden a Perú y el 44 % (3304 km²) a Bolivia,2​ su profundidad máxima se estima en 281 m y se calcula su profundidad media en 107 m. Su nivel es irregular y aumenta durante el verano austral.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 12,
              )),
        )),
      ),
    ),
  );
}

Widget accion(IconData icono, String nombre) {
  return Column(
    children: [
      Icon(
        icono,
        color: Colors.blue,
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        nombre,
        style: TextStyle(
          color: Colors.blue,
        ),
      )
    ],
  );
}

Widget titicaca(String lugarTuristico, String pais, String stars) {
  return Container(
    padding: EdgeInsets.only(top: 35, bottom: 35, left: 30, right: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lugarTuristico,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Ubicado en $pais",
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text(stars,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
          ],
        ),
      ],
    ),
  );
}

Widget box(String urlImage, Widget titicaca, List<Widget> acciones,
    Widget descripcion) {
  return Column(
    children: [
      Image.network(urlImage),
      titicaca,
      Container(
        padding: EdgeInsets.only(top: 1, bottom: 1, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: acciones,
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
        child: descripcion,
      ),
    ],
  );
}
