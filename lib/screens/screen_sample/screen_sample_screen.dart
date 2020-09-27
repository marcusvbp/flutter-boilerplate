import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterboilerplate/screens/screen_sample/screen_sample_controller.dart';
import 'package:flutterboilerplate/screens/screen_sample/widgets/counter.dart';

class ScreenSampleScreen extends StatelessWidget {
  const ScreenSampleScreen({Key key}) : super(key: key);

  // rota desta tela
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    final _controller = ScreenSampleController();

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
