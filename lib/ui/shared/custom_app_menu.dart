import 'package:bases_flutter_web/locator.dart';
import 'package:bases_flutter_web/services/navigator_service.dart';
import 'package:bases_flutter_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("App bar creado");
    // return _TabletDesktopMenu();
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 520)
            ? _TabletDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatuButton(
            text: "Contador Stateful",
            color: Colors.black,
            //forma tradicional que ya no funciona con las views
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),

            //Forma con los views implementados pero que ya no funciona por manejar mejor la navegación
            // onPressed: () => navigationService.navigateTo("/stateful"),

            //Forma con Get_it y la única instancia de navigationKey gracias a este singleton
            onPressed: () =>
                locator<NavigationService>().navigateTo("/stateful"),
          ),
          SizedBox(width: 10),
          CustomFlatuButton(
            text: "Contador Provider",
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            // onPressed: () => navigationService.navigateTo("/provider"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/provider"),
          ),
          SizedBox(width: 10),
          CustomFlatuButton(
            text: "Otra página",
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/abc123'),
            // onPressed: () => navigationService.navigateTo("/abc123"),
            onPressed: () => locator<NavigationService>().navigateTo("/abc123"),
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatuButton(
            text: "Contador Stateful",
            color: Colors.black,
            //forma tradicional que ya no funciona con las views
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),

            //Forma con los views implementados pero que ya no funciona por manejar mejor la navegación
            // onPressed: () => navigationService.navigateTo("/stateful"),

            //Forma con Get_it y la única instancia de navigationKey gracias a este singleton
            onPressed: () =>
                locator<NavigationService>().navigateTo("/stateful"),
          ),
          SizedBox(width: 10),
          CustomFlatuButton(
            text: "Contador Provider",
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            // onPressed: () => navigationService.navigateTo("/provider"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/provider"),
          ),
          SizedBox(width: 10),
          CustomFlatuButton(
            text: "Otra página",
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/abc123'),
            // onPressed: () => navigationService.navigateTo("/abc123"),
            onPressed: () => locator<NavigationService>().navigateTo("/abc123"),
          ),
        ],
      ),
    );
  }
}
