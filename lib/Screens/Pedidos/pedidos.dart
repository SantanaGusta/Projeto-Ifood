import 'package:flutter/material.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Pedidos'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return PedidoCard(order: orders[index]);
        },
      ),
    );
  }
}

class Pedido {
  final String restaurantName;
  final List<String> items;
  final double totalPrice;

  Pedido({required this.restaurantName, required this.items, required this.totalPrice});
}

final List<Pedido> orders = [
  Pedido(
    restaurantName: 'McDonalds',
    items: ['Hamburguer', 'Refrigerante'],
    totalPrice: 25.0,
  ),
  Pedido(
    restaurantName: 'Burguer King',
    items: ['Whopper', 'Refrigerante'],
    totalPrice: 30.0,
  ),
   Pedido(
    restaurantName: 'Subway',
    items: ['Sanduíche', 'Chá-mate'],
    totalPrice: 30.0,
  ),
   Pedido(
    restaurantName: 'Bobs',
    items: ['Hamburguer', 'Suco'],
    totalPrice: 30.0,
  ),
   Pedido(
    restaurantName: 'Habibs',
    items: ['Esfiha', 'Suco'],
    totalPrice: 30.0,
  ),
  // Adicione mais pedidos se desejar
];

class PedidoCard extends StatelessWidget {
  final Pedido order;

  PedidoCard({required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: ListTile(
        title: Text(order.restaurantName),
        subtitle: Text(order.items.join(', ')),
        trailing: Text('\$${order.totalPrice.toStringAsFixed(2)}'),
      ),
    );
  }
}
