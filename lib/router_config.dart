import 'package:flutter/material.dart';
import 'package:flutterboilerplate/screens/home/home_screen.dart';

Route<dynamic> routerConfig(settings) {
  // descomente isso ao criar uma nova tela e a inclua no switch
  // switch (settings.name) {
  //   case MyScreen.route:
  //     return MaterialPageRoute(
  //       builder: (context) => MyScreen(),
  //     );
  // }
  // rota padrão:
  return MaterialPageRoute(
    builder: (context) => HomeScreen(),
  );
}
