import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'list_screen.dart';
import 'detail_screen.dart';
import 'sensores_screen.dart';
import 'gestos_screen.dart';

final logger = Logger();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Menu(),
    );
  }
}

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
      ),
      drawer: buildDrawer(context),
      body: const Center(
        child: Text('Página de Menú'),
      ),
    );
  }
}

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Menú de Navegación',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          title: const Text('Lista'),
          onTap: () {
            logger.i('Navegar a Lista');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Detalle'),
          onTap: () {
            logger.i('Navegar a Detalle');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Sensores'),
          onTap: () {
            logger.i('Navegar a Sensores');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SensoresScreen()),
            );
          },
        ),
        ListTile(
          title: const Text('Gestos'),
          onTap: () {
            logger.i('Navegar a Gestos');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GestosScreen()),
            );
          },
        ),
      ],
    ),
  );
}
