import 'dart:html';

import 'package:bizz_flutter/ui/views/auth/login/login_view.dart';
import 'package:bizz_flutter/ui/views/auth/signup/signup_view.dart';
import 'package:bizz_flutter/ui/views/product/product_view.dart';
import 'package:bizz_flutter/ui/views/startup/cart/cart_view.dart';
import 'package:bizz_flutter/ui/views/startup/home/home_view.dart';
import 'package:bizz_flutter/ui/views/startup/profile/orders/orders_view.dart';
import 'package:bizz_flutter/ui/views/startup/profile/products/products_view.dart';
import 'package:bizz_flutter/ui/views/startup/profile/profile_view.dart';
import 'package:bizz_flutter/ui/views/startup/search/search_view.dart';
import 'package:bizz_flutter/ui/views/startup/startup_view.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: ProductView, name: 'productView'),
    MaterialRoute(page: CartView, name: 'cartView'),
    MaterialRoute(page: HomeView, name: 'homeView'),
    MaterialRoute(page: ProfileView, name: 'profileView'),
    MaterialRoute(page: OrdersView, name: 'ordersView'),
    MaterialRoute(page: ProductsView, name: 'productsView'),
    MaterialRoute(page: LoginView, name: 'loginView'),
    MaterialRoute(page: SignupView, name: 'signupView'),
    MaterialRoute(page: SearchView, name: 'searchView'),
  ],
)
class $Router {}
