import 'package:flutter/material.dart';
import 'main.dart';

class SensoresScreen extends StatelessWidget {
  const SensoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensores'),
      ),
      drawer: buildDrawer(context),
      body: const Center(
        child: Text('Página de Sensores'),
      ),
    );
  }
}
