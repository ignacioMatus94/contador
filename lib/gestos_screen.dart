import 'package:flutter/material.dart';
import 'main.dart';

class GestosScreen extends StatelessWidget {
  const GestosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestos'),
      ),
      drawer: buildDrawer(context),
      body: const Center(
        child: Text('Página de Gestos'),
      ),
    );
  }
}
