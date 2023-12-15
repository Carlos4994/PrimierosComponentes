import 'package:flutter/material.dart';
import 'package:miscomponentes/src/pages/alert_page.dart';
import 'package:miscomponentes/src/providers/menu_provider.dart';
import 'package:miscomponentes/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
        backgroundColor: Colors.blueAccent,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      //initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
    // return ListView(children: _listaItems());
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    // Check if data is not null
    if (data != null) {
      // ignore: avoid_function_literals_in_foreach_calls
      data.forEach((opt) {
        final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            final route = MaterialPageRoute(builder: (context) {
              return const AlertPage();
            });

            Navigator.push(context, route);
          },
        );
        opciones
          ..add(widgetTemp)
          ..add(const Divider());
      });
    }
    return opciones;
  }
}
