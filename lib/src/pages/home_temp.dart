import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});
  final opciones = const ['uno', 'dos', 'tres'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lista'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  //
  // ignore: unused_element
  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      ); // Agrega el punto y coma aquí
      lista
        ..add(tempWidget)
        ..add(const Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var wigets = opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text('$item!'),
            subtitle: const Text('subtitulo'),
            leading: const Icon(Icons.access_alarm),
            trailing: const Icon(Icons.arrow_back_ios_new),
          ),
          const Divider(),
        ],
      );
    }).toList();
    return wigets;
  }
}
