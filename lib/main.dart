import 'package:bases_flutter_web/locator.dart';
import 'package:flutter/material.dart';

import 'package:bases_flutter_web/layout/main_layout_page.dart';
import 'package:bases_flutter_web/router/router_generator.dart';

import 'package:bases_flutter_web/services/navigator_service.dart';

void main() {
  //inicializo singleton que me provee una sola instancia de navigatorKey
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: "/stateful",
      onGenerateRoute: RouteGenerator.generateRoute,
      /*Get_it me permite tener refeencia al singleton instancia del 
      locador.dart para manejar una sola instancia de navigatorKey.
      Ese singleton me busca la instancia del NavigationService
      y de este necesito la única instancia del navigatorKey
      */
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (context, child) {
        return MainLayoutPage(
          child: child ?? CircularProgressIndicator(),
        );
      },
    );
  }
}
