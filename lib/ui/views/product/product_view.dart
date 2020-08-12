//view class
import 'package:bizz_flutter/ui/views/product/product_viewmodel.dart';
import 'package:bizz_flutter/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:stacked/stacked.dart';

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
      builder: (context, model, child) => _ProductMainContent(),
      viewModelBuilder: () => ProductViewModel(),
    );
  }
}

class _ProductMainContent extends ViewModelWidget<ProductViewModel> {
  const _ProductMainContent({
    Key key,
  }) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, ProductViewModel model) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProductPictureStack(),
          _SellerInfoTile(),
          Divider(height: 1, color: Colors.grey),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Reviews',
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  _ReviewTile(),
                  _ReviewTile(),
                  _ReviewTile(),
                  _ReviewTile(),
                  _ReviewTile(),
                ],
              ),
            ),
          ),
          _ProductBottomButtons(),
        ],
      ),
    );
  }
}

class _ReviewTile extends StatelessWidget {
  const _ReviewTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Image(
              image: AssetImage('assets/images/green dress.jpg'),
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 15),
        Column(
          children: [
            Text(
              'I have been buying things from  \nshopee for couple of years now. \n What I like about them is...',
              maxLines: 2,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      SmoothStarRating(
                          allowHalfRating: true,
                          onRated: (v) {},
                          starCount: 5,
                          rating: 5,
                          size: 15.0,
                          isReadOnly: true,
                          color: Colors.yellow,
                          borderColor: Colors.yellow,
                          spacing: 0.0),
                      Text(' • Zeah Angela')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _SellerInfoTile extends StatelessWidget {
  const _SellerInfoTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Card(
        child: Image(
          image: AssetImage('assets/images/profile_picture.jpg'),
        ),
      ),
      title: Text('Liz Victoria'),
      subtitle: Text('seller'),
      trailing: FlatButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Icon(
            MdiIcons.chat,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class _ProductBottomButtons extends StatelessWidget {
  const _ProductBottomButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.blue[400],
          child: FlatButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Icon(
                MdiIcons.cartPlus,
                color: whiteColor,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue[800],
            child: FlatButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  'Buy Now',
                  style: whiteTextStyle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ProductPictureStack extends StatelessWidget {
  const _ProductPictureStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image(
          image: AssetImage('assets/images/brownish sweater.jpg'),
          height: 400,
          fit: BoxFit.fitHeight,
        ),
        Positioned(
          left: 10,
          bottom: 80,
          child: Text(
            'Brown Sweater',
            style: whiteTextStyle.copyWith(fontSize: 14),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 50,
          child: Text(
            '₱215',
            style: whiteTextStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 20,
          child: SmoothStarRating(
              allowHalfRating: true,
              onRated: (v) {},
              starCount: 5,
              rating: 4,
              size: 20.0,
              isReadOnly: true,
              color: Colors.yellow,
              borderColor: Colors.yellow,
              spacing: 0.0),
        ),
        Positioned(
          right: 25,
          bottom: 20,
          child: Column(
            children: [
              Text(
                '37 Sold',
                style: whiteTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '14 Stock',
                style: whiteTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
