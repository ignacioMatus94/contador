import 'package:flutter/material.dart';
import 'main.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle'),
      ),
      drawer: buildDrawer(context),
      body: const Center(
        child: Text('Página de Detalle'),
      ),
    );
  }
}
