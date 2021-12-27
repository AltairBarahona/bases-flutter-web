import 'package:fluro/fluro.dart';
import 'package:bases_flutter_web/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  //método estático para hacer la configuración de este router
  static void configureRoutes() {
    router.define(
      '/',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/stateful',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/stateful/:base',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/provider',
      handler: counterProviderHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.notFoundHandler = pageNotFound;

    router.define(
      '/dashboard/users/:userid/:roleid',
      handler: dashboardUserHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.notFoundHandler = pageNotFound;
  }
}
