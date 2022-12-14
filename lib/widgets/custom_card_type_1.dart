
import 'package:flutter/material.dart';

import 'package:flutter_componentes/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          const ListTile(
            leading: Icon( Icons.phishing_outlined, color: AppTheme.primary ),
            title: Text('Soy un Titulo'),
            subtitle: Text('Amet id consectetur tempor culpa velit culpa aliquip ut aute in dolore. Sunt occaecat in proident aliqua. Tempor duis proident ipsum sunt nostrud ea magna aliquip occaecat proident velit id commodo veniam. Ex deserunt eu deserunt tempor. Occaecat est nisi aliquip cupidatat consectetur laborum elit culpa labore esse veniam in. Mollit incididunt occaecat excepteur est ipsum incididunt nisi fugiat anim velit non velit fugiat exercitation.'),
          ),

          Padding(
            padding: const EdgeInsets.only( right: 5 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('OK'),
                )
              ],
            ),
          )

        ]
      ),
    );
  }
}