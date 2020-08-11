import 'package:bizz_flutter/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CurrentUserService extends ChangeNotifier {
  String _uid;
  String get uid => _uid;

  String _email;
  String get email => _email;

  Future<void> updateCurrentUserInfo(User user) async {
    print('currentUser $user');
    _uid = user.uid;
    _email = user.email;

    notifyListeners();
  }
}
