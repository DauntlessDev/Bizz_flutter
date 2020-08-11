import 'package:bizz_flutter/app/locator.dart';
import 'package:bizz_flutter/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  // final _dialog = locator<DialogService>();
  final _navigation = locator<NavigationService>();

  void navigateToProductView() {
    _navigation.navigateTo(Routes.productView);
  }
}
