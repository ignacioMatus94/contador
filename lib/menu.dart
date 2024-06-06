import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() {
    logger.i('Crear estado Menu');
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  _MenuState() {
    logger.i('Constructor: _MenuState');
    logger.i('mounted: $mounted');
  }

  @override
  void initState() {
    super.initState();
    logger.i('initState Menu');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    logger.i('didChangeDependencies Menu');
  }

  @override
  void didUpdateWidget(Menu oldWidget) {
    super.didUpdateWidget(oldWidget);
    logger.i('didUpdateWidget Menu');
  }

  @override
  void deactivate() {
    logger.i('deactivate Menu');
    super.deactivate();
  }

  @override
  void dispose() {
    logger.i('dispose Menu');
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    logger.i('reassemble Menu');
  }

  @override
  Widget build(BuildContext context) {
    logger.i('build Menu');
    return const Center(
      child: Text('Página de Menú'),
    );
  }
}
