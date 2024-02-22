import 'package:aifood/CustomWindgets/card.dart';
import 'package:aifood/CustomWindgets/styles.dart';
import 'package:flutter/material.dart';

class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: TextFormField(
        decoration: InputDecoration(
          hintText: 'Buscar em todo o aiFood',
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.all(4),
          prefixIcon: const Icon(Icons.search, color: Colors.red,),
          filled: true,
          fillColor: Colors.grey[50]
        ),
      ),
    ),
    body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Categorias', style: textNunitoBold(16)),
        ),
        Wrap(
          children: [
            customCard(185, 80, Colors.red, 'Bebidas','assets/bebidas.png'),
            customCard(185, 80, Colors.orange, 'Bolo', 'assets/bolo.png'),
            customCard(185, 80, Colors.green, 'Cafe', 'assets/cafe.png'),
            customCard(185, 80, Colors.purple, 'Carnes', 'assets/carnes.png'),
            customCard(185, 80, Colors.blue, 'Farmacia', 'assets/farmaciaaa.png'),
            customCard(185, 80, Colors.yellow, 'HotDog', 'assets/hotDog.png'),
            customCard(185, 80, Colors.red, 'Lanches', 'assets/lanches.png'),
            customCard(185, 80, Colors.orange, 'Marmita', 'assets/marmita.png'),
            customCard(185, 80, Colors.green, 'Mercado', 'assets/mercadoo.png'),
            customCard(185, 80, Colors.purple, 'Peixes', 'assets/peixes.png'),
            customCard(185, 80, Colors.blue, 'Pet', 'assets/pet.png'),
            customCard(185, 80, Colors.yellow, 'Pizza', 'assets/pizza.png'),
            customCard(185, 80, Colors.red, 'Sopas', 'assets/sopas.png'),
            customCard(185, 80, Colors.orange, 'Sorvetes', 'assets/sorvetes.png'),
            customCard(185, 80, Colors.green, 'Sucos', 'assets/sucos.png'),
            customCard(185, 80, Colors.purple, 'Tapioca', 'assets/tapioca.png'),

          ],
        )
      ],
    ),
  );
  }
}