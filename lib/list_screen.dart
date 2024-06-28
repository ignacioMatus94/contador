import 'package:flutter/material.dart';
import 'main.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      drawer: buildDrawer(context),
      body: const Center(
        child: Text('Página de Lista'),
      ),
    );
  }
}
