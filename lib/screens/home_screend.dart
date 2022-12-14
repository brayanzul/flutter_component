import 'package:flutter/material.dart';

import 'package:flutter_componentes/router/app_routes.dart';
import 'package:flutter_componentes/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
          title: Text(menuOptions[i].name, selectionColor: Colors.black,),
          onTap: () {
              
            /* final route = MaterialPageRoute(
              builder: (context) => const Listview2Screen(),
            );

            Navigator.push(context, route); */

            Navigator.pushNamed(context, menuOptions[i].route);

          },
        ), 
        separatorBuilder: ( _, __) => const Divider(), 
        itemCount: menuOptions.length
      )
    );
  }
}