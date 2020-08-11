import 'package:bizz_flutter/app/locator.dart';
import 'package:meta/meta.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CartViewModel extends BaseViewModel {
  // final _dialog = locator<DialogService>();

  int counterValue = 0;
  int get getCounterValue => counterValue;

  void setCounterValue(int counterValue) {
    this.counterValue = counterValue;
    notifyListeners();
  }
}
