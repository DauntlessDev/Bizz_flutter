import 'package:bizz_flutter/app/locator.dart';
import 'package:bizz_flutter/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();

  void navigateToLoginView() => _navigation.navigateTo(Routes.loginView);
  void navigateToSignupView() => _navigation.navigateTo(Routes.signupView);
  void navigateToProductsView() => _navigation.navigateTo(Routes.productsView);
  void navigateToOrdersView() => _navigation.navigateTo(Routes.ordersView);
}
