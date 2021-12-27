import 'package:bases_flutter_web/services/navigator_service.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

/*Proveedor de Singleton para manejar el navigationKey sin que se 
cree una nueva instancia cada vez que lo llamo */
void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
