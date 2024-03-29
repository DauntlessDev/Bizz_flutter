//view class
import 'package:bizz_flutter/ui/widgets/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stacked/stacked.dart';
import '../../../../../utils/constants.dart';
import 'orders_viewmodel.dart';

class OrdersView extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersViewModel>.reactive(
      builder: (context, model, child) => _MainContent(),
      viewModelBuilder: () => OrdersViewModel(),
    );
  }
}

class _MainContent extends ViewModelWidget<OrdersViewModel> {
  const _MainContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, OrdersViewModel model) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: whiteColor,
        title: Text('My Orders', style: blackTextStyle),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(
              MdiIcons.messageOutline,
              color: blackColor,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 2),
            child: Card(
              child: Row(
                children: <Widget>[
                  // Checkbox(onChanged: (bool value) {}, value: false),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '  Order List ',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(),
                  // Icon(MdiIcons.trashCanOutline),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                OrdersItemPost(
                  title: 'Green Light Weight Dress',
                  prize: 47,
                  pictureUrl: 'assets/images/green dress.jpg',
                ),
                OrdersItemPost(
                  title: 'Pink Light Weight Dress',
                  prize: 47,
                  pictureUrl: 'assets/images/pink dress.jpg',
                ),
                OrdersItemPost(
                  title: 'Water Light Weight Shirt',
                  prize: 47,
                  pictureUrl: 'assets/images/brownish sweater.jpg',
                ),
                OrdersItemPost(
                  title: 'Brownish Light Weight Sweater',
                  prize: 47,
                  pictureUrl: 'assets/images/green dress.jpg',
                ),
                OrdersItemPost(
                  title: 'Pink Light Weight Dress',
                  prize: 47,
                  pictureUrl: 'assets/images/pink dress.jpg',
                ),
                OrdersItemPost(
                  title: 'Water Light Weight Shirt',
                  prize: 47,
                  pictureUrl: 'assets/images/brownish sweater.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrdersItemPost extends ViewModelWidget<OrdersViewModel> {
  const OrdersItemPost({
    Key key,
    @required this.title,
    @required this.pictureUrl,
    @required this.prize,
  }) : super(key: key, reactive: true);

  final String title;
  final String pictureUrl;
  final int prize;

  @override
  Widget build(BuildContext context, OrdersViewModel model) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 0),
      child: Card(
        child: Row(
          children: <Widget>[
            // Checkbox(onChanged: (bool value) {}, value: false),
            Image(
              image: AssetImage(pictureUrl),
              height: 150,
              width: 100,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.length < 18 ? title : '${title.substring(0, 17)}...',
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  '\$ ${prize.toStringAsFixed(2)}',
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  'Quantity: 23',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Icon(
                MdiIcons.truckDelivery,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
