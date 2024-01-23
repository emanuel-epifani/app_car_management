import 'package:flutter/material.dart';

import '../../shared_widgets/card_maintenance_item.dart';
import 'components/app_bar.dart';
import 'components/bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: CarManagementAppBar()),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            const Text(
              'Stato dei PAGAMENTI',
              textScaler: TextScaler.linear(1.5),
            ),
            CardMaintenanceItem(
                titleItem: 'REVISIONE',
                descriptionItem:
                    'check sicurezza, emissioni rumorose e inquinanti',
                timeOfValidity: '12 mesi o 15.000km',
                dateOfExpire: DateTime(2023, 4, 28))
          ],
        ),
      ),
      bottomNavigationBar: CarManagementBottomBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
