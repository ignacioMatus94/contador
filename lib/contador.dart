import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class Contador extends StatefulWidget {
  const Contador({super.key, required this.title});

  final String title;

  @override
  State<Contador> createState() {
    logger.i('Crear estado Contador');
    return _ContadorState();
  }
}

class _ContadorState extends State<Contador> {
  int _counter = 0;

  _ContadorState() {
    logger.i('Constructor: _ContadorState');
    logger.i('mounted: $mounted');
  }

  @override
  void initState() {
    super.initState();
    logger.i('initState Contador');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    logger.i('didChangeDependencies Contador');
  }

  @override
  void didUpdateWidget(Contador oldWidget) {
    super.didUpdateWidget(oldWidget);
    logger.i('didUpdateWidget Contador');
  }

  @override
  void deactivate() {
    logger.i('deactivate Contador');
    super.deactivate();
  }

  @override
  void dispose() {
    logger.i('dispose Contador');
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    logger.i('reassemble Contador');
  }

  void _incrementCounter() {
    if (_counter < 15) {
      setState(() {
        logger.i('setState: Incrementar Contador');
        _counter++;
      });
    }
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        logger.i('setState: Disminuir Contador');
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    logger.i('build Contador');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Has presionado el botón esta cantidad de veces:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Disminuir',
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Incrementar',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
