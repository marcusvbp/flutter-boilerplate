import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterboilerplate/screens/home/home_controller.dart';
import 'package:flutterboilerplate/screens/home/widgets/counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  // rota desta tela
  static const String route = '/screen-example';

  @override
  Widget build(BuildContext context) {
    final _controller = HomeController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Observer(
        builder: (context) {
          return Counter(
            counter: _controller.counter,
          );
        },
      ),
      floatingActionButton: Observer(
        builder: (context) {
          return FloatingActionButton(
            onPressed: _controller.increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
