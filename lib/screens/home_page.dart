import 'package:flutter/material.dart';

import '../shared_widgets/card_maintenance_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MANAGEMENT MACCHINA'),
        ),
        body: Column(
          children: [CardMaintenanceItem(titleItem: 'REVISIONE', descriptionItem: 'check sicurezza, emissioni rumorose e inquinanti', timeOfValidity: '12 mesi o 15.000km', dateOfExpire: DateTime(2024, 4, 24))],
        ));
  }
}
