import 'package:flutter/material.dart';

import '../shared_widgets/card_maintenance_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MANAGEMENT MACCHINA',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            const Text(
              'Stato dei PAGAMENTI',
              textScaleFactor: 1.5,
            ),
            CardMaintenanceItem(titleItem: 'REVISIONE', descriptionItem: 'check sicurezza, emissioni rumorose e inquinanti', timeOfValidity: '12 mesi o 15.000km', dateOfExpire: DateTime(2023, 4, 28))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
