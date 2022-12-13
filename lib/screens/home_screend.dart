import 'package:flutter/material.dart';

import 'package:flutter_componentes/screens/screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_alarm_outlined),
          title: const Text('Nombre de Ruta'),
          onTap: () {
              
            /* final route = MaterialPageRoute(
              builder: (context) => const Listview2Screen(),
            );

            Navigator.push(context, route); */

            Navigator.pushNamed(context, 'card2');

          },
        ), 
        separatorBuilder: ( _, __) => const Divider(), 
        itemCount: 10
      )
    );
  }
}