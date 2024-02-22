
import 'package:aifood/CustomWindgets/circleAvatar.dart';
import 'package:aifood/CustomWindgets/listTile.dart';
import 'package:aifood/CustomWindgets/styles.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              espacoHorizontal(8),
              circleAvatar('assets/avatar.png'),
              espacoHorizontal(16),
              Text('Santana',style: textrRobotoBold(18)),
            ],
          ),
          listTile(Icons.message, "Conversas", "Meu histórico de conversas"),
          listTile(Icons.notifications, "Notificações", "Minha central de notificações"),
          listTile(Icons.payment, "Pagamentos", "Meu saldo e cartões"),
          listTile(Icons.store, "Assinaturas", "Minhas assinaturas"),
          listTile(Icons.loyalty, "Clube Ifood", "Meus benefícios exclusivos"),
          listTile(Icons.local_offer, "Cupons", "Meus cupons de desconto"),
          listTile(Icons.card_giftcard, "Ifood", "Minha área de compra e resgate"),
          listTile(Icons.loyalty, "Fidelidade", "Minhas fidelidades"),
          listTile(Icons.favorite, "Favoritos", "Meus locais favoritos"),
          listTile(Icons.explore, "Descobrir", "Encontre novidades quentinhas"),
        ],
      ),
    );
  }
}
