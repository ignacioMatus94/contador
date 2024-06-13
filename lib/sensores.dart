import 'package:flutter/material.dart';

class Sensores extends StatelessWidget {
  const Sensores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensores'),
      ),
      body: const Center(
        child: Text('Página de Sensores'),
      ),
    );
  }
}
