
import 'package:aifood/CustomWindgets/card.dart';
import 'package:aifood/CustomWindgets/slide.dart';
import 'package:aifood/CustomWindgets/styles.dart';
import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('R. Ari Barroso, 330', style: textNunito300(14)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.red),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                customCard(190, 80, Colors.deepPurple, "Pet", "assets/pet.png"),
                customCard(190, 80,  Colors.deepPurple, "Mercado", "assets/mercadoo.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                cardDois(90, 100, Colors.deepPurple[50], "Farmácia", "assets/farmaciaaa.png"),
                cardDois(90, 100, Colors.deepPurple[50], "Bebidas", "assets/bebidas.png"),
                const SizedBox(width: 10),
                cardDois(90, 100, Colors.deepPurple[50], "Sucos", "assets/sucos.png"),
                cardDois(90, 100, Colors.deepPurple[50], "Pizza", "assets/pizza.png"),
              ],
            ),
          ),
          Slide(),
        ],
      ),
    );
  }
}