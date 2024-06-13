import 'package:flutter/material.dart';

class Detalle extends StatelessWidget {
  final String item;

  const Detalle({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle'),
      ),
      body: Center(
        child: Text(
          'Detalle del $item',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
