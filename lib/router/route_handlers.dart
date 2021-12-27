//handlers
//lo que quiero que ejecute cuando ingrese a esa ruta

import 'package:bases_flutter_web/ui/views/counter_provider_view.dart';
import 'package:bases_flutter_web/ui/views/counter_view.dart';
import 'package:bases_flutter_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

final counterHandler = new Handler(
    //debe regresar una página o una vista.
    handlerFunc: (context, parameters) {
  print(parameters['base']?[0]);
  return CounterView(
    base: parameters['base']?[0] ?? '5',
  );
});

final counterProviderHandler = new Handler(handlerFunc: (context, parameters) {
  print(parameters);
  return CounterProviderView(
    base: parameters['q']?[0] ?? '10',
  );
});

final dashboardUserHandler = new Handler(handlerFunc: (context, parameters) {
  print(parameters);
  return View404();
});

final pageNotFound = new Handler(
  handlerFunc: (_, __) => View404(),
);
