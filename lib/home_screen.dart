import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'menu.dart';
import 'contador.dart';
import 'sensores.dart';
import 'gestos.dart';
import 'lista.dart';

final logger = Logger();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    logger.i('Crear estado HomeScreen');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Menu(),
    Contador(title: 'Contador'),
    Sensores(),
    Gestos(),
    Lista(),
  ];

  _HomeScreenState() {
    logger.i('Constructor: _HomeScreenState');
    logger.i('mounted: $mounted');
  }

  @override
  void initState() {
    super.initState();
    logger.i('initState HomeScreen');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    logger.i('didChangeDependencies HomeScreen');
  }

  @override
  void didUpdateWidget(HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    logger.i('didUpdateWidget HomeScreen');
  }

  @override
  void deactivate() {
    logger.i('deactivate HomeScreen');
    super.deactivate();
  }

  @override
  void dispose() {
    logger.i('dispose HomeScreen');
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    logger.i('reassemble HomeScreen');
  }

  void _onItemTapped(int index) {
    if (index >= 0 && index < _pages.length) {
      setState(() {
        logger.i('setState: Cambiar página a $index');
        _selectedIndex = index;
      });
      Navigator.pop(context); // Cierra el drawer al seleccionar una opción
    }
  }

  @override
  Widget build(BuildContext context) {
    logger.i('build HomeScreen');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab Segunda Unidad'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.card_giftcard),
              title: const Text('Ejemplo Card'),
              onTap: () {
                _onItemTapped(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.countertops),
              title: const Text('Contador'),
              onTap: () {
                _onItemTapped(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.sensors),
              title: const Text('Sensores'),
              onTap: () {
                _onItemTapped(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.gesture),
              title: const Text('Gestos'),
              onTap: () {
                _onItemTapped(3);
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Lista'),
              onTap: () {
                _onItemTapped(4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
