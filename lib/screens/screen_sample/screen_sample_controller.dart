import 'package:mobx/mobx.dart';

part 'screen_sample_controller.g.dart';

class ScreenSampleController = ScreenSampleControllerBase
    with _$ScreenSampleController;

abstract class ScreenSampleControllerBase with Store {
  @observable
  int counter = 0;

  @action
  void increment() => counter++;
}
