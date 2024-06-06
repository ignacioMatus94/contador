import 'package:flutter/material.dart';
import 'package:contador/menu.dart';
import 'package:contador/contador.dart';
import 'package:logger/logger.dart';

final logger = Logger();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

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
    setState(() {
      logger.i('setState: Cambiar página a $index');
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    logger.i('build HomeScreen');
    return Scaffold(
      appBar: AppBar(
        title: const Text('lab Segunda unidad'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menú',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.countertops),
            label: 'Contador',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}
