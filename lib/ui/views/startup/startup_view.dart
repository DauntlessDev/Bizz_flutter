//view class
import 'package:bizz_flutter/ui/views/startup/profile/profile_view.dart';
import 'package:bizz_flutter/ui/views/startup/search/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../utils/constants.dart';
import 'cart/cart_view.dart';
import 'home/home_view.dart';
import 'startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: _CupertinoHomeScaffold(
            currentTab: model.currentTab,
            onSelectTab: model.select,
            widgetBuilders: _TabItemData.widgetBuilders,
            navigatorKey: _TabItemData.navigatorKey),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}

class _CupertinoHomeScaffold extends StatelessWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;
  final Map<TabItem, WidgetBuilder> widgetBuilders;
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKey;

  _CupertinoHomeScaffold(
      {Key key,
      @required this.currentTab,
      @required this.onSelectTab,
      @required this.widgetBuilders,
      @required this.navigatorKey,
      CupertinoTabBar builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: 0,
        backgroundColor: whiteColor,
        items: [
          _buildItem(TabItem.home),
          _buildItem(TabItem.search),
          _buildItem(TabItem.cart),
          _buildItem(TabItem.profile),
        ],
        onTap: (index) => onSelectTab(TabItem.values[index]),
      ),
      tabBuilder: (BuildContext context, int index) {
        final item = TabItem.values[index];
        return CupertinoTabView(
          navigatorKey: navigatorKey[item],
          builder: (context) => widgetBuilders[item](context),
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    final itemData = _TabItemData.allData[tabItem];
    final color = currentTab == tabItem ? darkBlueColor : greyColor;

    return BottomNavigationBarItem(
      icon: Icon(
        itemData.icon,
        color: color,
      ),
    );
  }
}

class _TabItemData {
  const _TabItemData({@required this.title, @required this.icon});

  final String title;
  final IconData icon;

  static const Map<TabItem, _TabItemData> allData = {
    TabItem.home: _TabItemData(
      title: 'Home',
      icon: MdiIcons.homeOutline,
    ),
    TabItem.search:
        _TabItemData(title: 'Search', icon: MdiIcons.puzzleCheckOutline),
    TabItem.cart: _TabItemData(title: 'Chart', icon: MdiIcons.cartOutline),
    TabItem.profile: _TabItemData(
      title: 'Profile',
      icon: MdiIcons.accountOutline,
    ),
  };

  static Map<TabItem, GlobalKey<NavigatorState>> get navigatorKey {
    return {
      TabItem.home: HomeView.navigatorKey,
      TabItem.search: SearchView.navigatorKey,
      TabItem.cart: CartView.navigatorKey,
      TabItem.profile: ProfileView.navigatorKey,
    };
  }

  static Map<TabItem, WidgetBuilder> get widgetBuilders {
    return {
      TabItem.home: (_) => HomeView(),
      TabItem.search: (_) => SearchView(),
      TabItem.cart: (_) => CartView(),
      TabItem.profile: (_) => ProfileView(),
    };
  }
}
