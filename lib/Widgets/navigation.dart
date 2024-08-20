import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const Navigation({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFE0FBE2),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.restaurant_menu_outlined),
          label: 'Entree',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fastfood_outlined),
          label: 'Mains',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cake_outlined),
          label: 'Dessert',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_awesome_outlined),
          label: 'Ai',
        ),
      ],
      currentIndex: selectedIndex,
      unselectedItemColor: const Color(0xFF468876),
      selectedItemColor: const Color(0xFF3AB794),
      unselectedIconTheme: const IconThemeData(size: 15),
      selectedIconTheme: const IconThemeData(size: 25),
      onTap: onItemTapped,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    );
  }
}