// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/auth/login/login_view.dart';
import '../ui/views/auth/signup/signup_view.dart';
import '../ui/views/startup/cart/cart_view.dart';
import '../ui/views/startup/home/home_view.dart';
import '../ui/views/startup/profile/orders/orders_view.dart';
import '../ui/views/startup/profile/products/products_view.dart';
import '../ui/views/startup/profile/profile_view.dart';
import '../ui/views/startup/search/search_view.dart';
import '../ui/views/startup/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String cartView = '/cart-view';
  static const String homeView = '/home-view';
  static const String profileView = '/profile-view';
  static const String ordersView = '/orders-view';
  static const String productsView = '/products-view';
  static const String loginView = '/login-view';
  static const String signupView = '/signup-view';
  static const String searchView = '/search-view';
  static const all = <String>{
    startupView,
    cartView,
    homeView,
    profileView,
    ordersView,
    productsView,
    loginView,
    signupView,
    searchView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.cartView, page: CartView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.profileView, page: ProfileView),
    RouteDef(Routes.ordersView, page: OrdersView),
    RouteDef(Routes.productsView, page: ProductsView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.signupView, page: SignupView),
    RouteDef(Routes.searchView, page: SearchView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    CartView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CartView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    ProfileView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfileView(),
        settings: data,
      );
    },
    OrdersView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrdersView(),
        settings: data,
      );
    },
    ProductsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductsView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(),
        settings: data,
      );
    },
    SignupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignupView(),
        settings: data,
      );
    },
    SearchView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchView(),
        settings: data,
      );
    },
  };
}
