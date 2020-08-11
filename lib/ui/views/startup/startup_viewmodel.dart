import 'package:bizz_flutter/ui/views/startup/home/home_view.dart';
import 'package:bizz_flutter/ui/views/startup/profile/profile_view.dart';
import 'package:bizz_flutter/ui/views/startup/search/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import 'cart/cart_view.dart';

class StartupViewModel extends BaseViewModel {
  TabItem _currentTab = TabItem.home;
  TabItem get currentTab => _currentTab;

  void select(TabItem value) {
    _currentTab = value;
    notifyListeners();
  }
}

enum TabItem { home, search, cart, profile }
