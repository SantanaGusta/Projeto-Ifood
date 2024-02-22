import 'package:flutter/material.dart';


BottomNavigationBar bottomNavigationBar(int itemSelecionado, nextStation){
  return  BottomNavigationBar(
        currentIndex: itemSelecionado,
        onTap: nextStation,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          menuInferior(Icons.home, 'Home'),
          menuInferior(Icons.search, 'Busca'),
          menuInferior(Icons.shopping_cart, 'Pedidos'),
          menuInferior(Icons.person, 'Perfil'),
         ],
      );
}



BottomNavigationBarItem menuInferior(IconData icon, String texto){
  return BottomNavigationBarItem( 
    icon: Icon(
      icon,
      color: Colors.black,
    ), label: texto, 
  );
}