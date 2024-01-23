import 'package:flutter/material.dart';

class CarManagementBottomBar extends StatelessWidget {
  const CarManagementBottomBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Pagamenti',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Manutenzione',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: onItemTapped,
    );
  }
}
