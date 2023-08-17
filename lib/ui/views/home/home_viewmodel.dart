import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel(int startingIndex) {
    _counter = startingIndex;
  }

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }
}
