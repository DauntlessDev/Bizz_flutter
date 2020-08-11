//view class
import 'package:bizz_flutter/ui/widgets/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stacked/stacked.dart';
import '../../../../utils/constants.dart';
import 'profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => _MainContent(),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}

class _MainContent extends ViewModelWidget<ProfileViewModel> {
  const _MainContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ProfileViewModel model) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[100],
          title: Text(
            'Profile',
            style: blackTextStyle,
          ),
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Avatar(radius: 90, photoUrl: ''),
                    SizedBox(height: 25),
                    Text(
                      'Liz Victoria',
                      style: TextStyle(
                        color: Colors.blueGrey[700],
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Material(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(30.0),
                      elevation: 1.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 7.0),
                        child: Text(
                          'Seller',
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 400,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ListTile(
                          leading: _ProfileImageIcon(
                              imagePath: 'assets/images/credit_card_icon.PNG'),
                          title: Text('Payment Settings'),
                          trailing: Icon(MdiIcons.chevronRight),
                        ),
                        ListTile(
                          leading: _ProfileImageIcon(
                              imagePath: 'assets/images/products_icon.PNG'),
                          title: Text('Products'),
                          trailing: Icon(MdiIcons.chevronRight),
                        ),
                        ListTile(
                          leading: _ProfileImageIcon(
                              imagePath: 'assets/images/orders_icon.PNG'),
                          title: Text('Orders'),
                          trailing: Icon(MdiIcons.chevronRight),
                        ),
                        // ListTile(
                        //   leading: _ProfileImageIcon(
                        //       imagePath: 'assets/images/favourites_icon.PNG'),
                        //   title: Text('Favourites'),
                        //   trailing: Icon(MdiIcons.chevronRight),
                        // ),
                        ListTile(
                          leading: _ProfileImageIcon(
                              imagePath: 'assets/images/logout_icon.PNG'),
                          title: Text('Logout'),
                          trailing: Icon(MdiIcons.chevronRight),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class _ProfileImageIcon extends StatelessWidget {
  const _ProfileImageIcon({
    Key key,
    @required this.imagePath,
  }) : super(key: key);

  final imagePath;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image(
        image: AssetImage(imagePath),
      ),
    );
  }
}
