import 'package:bases_flutter_web/ui/views/counter_provider_view.dart';
import 'package:bases_flutter_web/ui/views/counter_view.dart';
import 'package:bases_flutter_web/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import "package:flutter/foundation.dart" show kIsWeb;

import 'package:bases_flutter_web/ui/pages/counter_page.dart';
import 'package:bases_flutter_web/ui/pages/counter_provider_page.dart';
import 'package:bases_flutter_web/ui/pages/page_404.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Basado en el nombre de la ruta necesito generar algo
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(CounterView(), "/stateful");
      // return MaterialPageRoute(
      //   settings: RouteSettings(name: '/stateful'),
      //   builder: (_) => CounterPage(),
      // );
      case '/provider':
        return _fadeRoute(CounterProviderView(), "/provider");

      // return MaterialPageRoute(
      //   settings: RouteSettings(name: '/provider'),
      //   builder: (_) => CounterProviderPage(),
      // );
      default:
        return _fadeRoute(View404(), "/404");

      // return MaterialPageRoute(
      //   settings: RouteSettings(name: '/404'),
      //   builder: (_) => Page404(),
      // );
    }
    // return MaterialPageRoute(builder: (_) => CounterPage());
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        // transitionDuration: Duration(milliseconds: 200),

        // Hero animation trabaja con la transición de FadeTransition
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                child: child,
                linearTransition: true,
              ));
  }
}
