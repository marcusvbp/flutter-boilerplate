import 'package:flutter/material.dart';
import 'package:flutterboilerplate/provider_config.dart';
import 'package:flutterboilerplate/router_config.dart';

void main() {
  runApp(
    // ao registrar o primeiro Provider, descomente a linha abaixo
    // ProviderConfig(child: MyApp()
    // ao registrar o primeiro Provider, comente a linha abaixo
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boilerplate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: routerConfig,
    );
  }
}
