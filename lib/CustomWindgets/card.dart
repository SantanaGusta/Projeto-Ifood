import 'package:flutter/material.dart';

Widget customCard(double largura, double altura, Color color, String texto, String img) {
  return Container(
    margin: const EdgeInsets.all(4),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(texto),
        ),
        Image.asset(img, width: 50, height: 50),
      ],
    ),
  );
}

Widget cardDois(double largura, double altura, Color? color, String texto, String img) {
  return Container(
    margin: const EdgeInsets.all(4),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(texto),
        ),
        Image.asset(img, width: 50, height: 50),
      ],
    ),
  );
}