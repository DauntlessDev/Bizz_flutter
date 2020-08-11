//view class
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stacked/stacked.dart';

import 'package:bizz_flutter/utils/constants.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => _MainContent(),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

class _MainContent extends ViewModelWidget<HomeViewModel> {
  const _MainContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          backgroundColor: whiteColor,
          title: Text('Home', style: blackTextStyle),
          actions: <Widget>[
            Icon(
              MdiIcons.cartOutline,
              color: blackColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(
                MdiIcons.messageOutline,
                color: blackColor,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.square(50),
            child: Row(
              children: [
                TextTabBar(text: 'All'),
                TextTabBar(text: 'Shirts'),
                TextTabBar(text: 'Jackets'),
                TextTabBar(text: 'Dress'),
                TextTabBar(text: 'Pants'),
              ],
            ),
            // child: TabBar(
            //   tabs: [
            //     Text('All'),
            //     Text('Shirts'),
            //     Text('Jackets'),
            //     Text('Pants'),
            //     Text('Shorts'),
            //   ],
            // ),
          )),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300.0,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
            childAspectRatio: .6,
          ),
          children: <Widget>[
            ItemPost(
              title: 'Green Light Weight Dress',
              prize: 47,
              pictureUrl: 'assets/images/green dress.jpg',
            ),
            ItemPost(
              title: 'Pink Light Weight Dress',
              prize: 47,
              pictureUrl: 'assets/images/pink dress.jpg',
            ),
            ItemPost(
              title: 'Water Light Weight Shirt',
              prize: 47,
              pictureUrl: 'assets/images/brownish sweater.jpg',
            ),
            ItemPost(
              title: 'Brownish Light Weight Sweater',
              prize: 47,
              pictureUrl: 'assets/images/green dress.jpg',
            ),
            ItemPost(
              title: 'Pink Light Weight Dress',
              prize: 47,
              pictureUrl: 'assets/images/pink dress.jpg',
            ),
            ItemPost(
              title: 'Water Light Weight Shirt',
              prize: 47,
              pictureUrl: 'assets/images/brownish sweater.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class TextTabBar extends StatelessWidget {
  const TextTabBar({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Text(
        text,
        style: TextStyle(
            color: blackColor, fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class ItemPost extends ViewModelWidget<HomeViewModel> {
  const ItemPost({
    Key key,
    @required this.title,
    @required this.pictureUrl,
    @required this.prize,
  }) : super(key: key);

  final String title;
  final String pictureUrl;
  final int prize;

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return GestureDetector(
      onTap: model.navigateToProductView,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage(pictureUrl),
                  height: 170,
                  fit: BoxFit.none,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '\$ ${prize.toStringAsFixed(2)}',
                style: TextStyle(
                    color: blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: blackColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
