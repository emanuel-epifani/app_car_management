import 'package:flutter/material.dart';

class CarManagementAppBar extends StatelessWidget {
  const CarManagementAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'MANAGEMENT MACCHINA',
      ),
    );
  }
}
