import 'package:flutter/material.dart';
import 'package:flutter_componentes/models/menu_option.dart';
import 'package:flutter_componentes/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled),
    MenuOption(route: 'listview1', name: 'Listview Tipos 1', screen: const Listview1Screen(), icon: Icons.list_alt_outlined),
    MenuOption(route: 'listview2', name: 'Listview Tipos 2', screen: const Listview2Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Cards', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> AppRoutes = {};

    for (final option in menuOptions) {
      AppRoutes.addAll({ option.route :(BuildContext context) => option.screen });
    }

    return AppRoutes;
  }

 /* static Map<String, Widget Function(BuildContext)> routes = {
    'home'     :(BuildContext context) => const HomeScreen(),
    'listview1':(BuildContext context) => const Listview1Screen(),
    'listview2':(BuildContext context) => const Listview2Screen(), 
    'alert'    :(BuildContext context) => const AlertScreen(), 
    'card'     :(BuildContext context) => const CardScreen(),  
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}

