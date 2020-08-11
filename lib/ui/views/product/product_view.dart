//view class
import 'package:bizz_flutter/ui/views/product/product_viewmodel.dart';
import 'package:bizz_flutter/utils/constants.dart';
import 'package:bizz_flutter/ui/widgets/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stacked/stacked.dart';

class ProductView extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
      builder: (context, model, child) => _MainContent(),
      viewModelBuilder: () => ProductViewModel(),
    );
  }
}

class _MainContent extends ViewModelWidget<ProductViewModel> {
  const _MainContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ProductViewModel model) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        title: Avatar(
          radius: 20,
          photoUrl: '',
        ),
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
          preferredSize: Size.square(70),
          child: Column(
            children: [
              SizedBox(height: 10),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Product anything...',
                      // suffixIcon: Icon(Icons.Product),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ProductItemPost(
            title: 'Green Light Weight Dress',
            prize: 47,
            pictureUrl: 'assets/images/green dress.jpg',
          ),
          ProductItemPost(
            title: 'Pink Light Weight Dress',
            prize: 47,
            pictureUrl: 'assets/images/pink dress.jpg',
          ),
          ProductItemPost(
            title: 'Water Light Weight Shirt',
            prize: 47,
            pictureUrl: 'assets/images/brownish sweater.jpg',
          ),
          ProductItemPost(
            title: 'Brownish Light Weight Sweater',
            prize: 47,
            pictureUrl: 'assets/images/green dress.jpg',
          ),
          ProductItemPost(
            title: 'Pink Light Weight Dress',
            prize: 47,
            pictureUrl: 'assets/images/pink dress.jpg',
          ),
          ProductItemPost(
            title: 'Water Light Weight Shirt',
            prize: 47,
            pictureUrl: 'assets/images/brownish sweater.jpg',
          ),
        ],
      ),
    );
  }
}

class ProductItemPost extends StatelessWidget {
  const ProductItemPost({
    Key key,
    @required this.title,
    @required this.pictureUrl,
    @required this.prize,
  }) : super(key: key);

  final String title;
  final String pictureUrl;
  final int prize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
      child: Card(
        child: Column(
          children: [
            Image(image: AssetImage(pictureUrl)),
            SizedBox(height: 10),
            Text(
              '\$ ${prize.toStringAsFixed(2)}',
              style: TextStyle(
                  color: blackColor, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              title,
              style: TextStyle(
                  color: blackColor, fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
