import 'package:flutter/material.dart';
import 'package:componentes/models/models.dart';
import 'package:componentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(
      route: 'home',
      name: 'Pantalla principal',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      route: 'listview2',
      name: 'mi perfil',
      screen: const ListviewScreen(),
      icon: Icons.people,
    ),
    MenuOption(
      route: 'separated',
      name: 'preguntas',
      screen: const ListviewSeparatedScreen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'alert',
      name: 'Preguntas sin Responder',
      screen: const AlertScreen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.picture_in_picture_alt),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // // mapea las rutas  usando  routes
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'separated': (BuildContext context) => const ListviewSeparatedScreen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
