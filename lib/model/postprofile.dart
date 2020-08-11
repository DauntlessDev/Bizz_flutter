import 'package:meta/meta.dart';

import 'post.dart';
import 'profile.dart';

class PostProfile {
  final Post post;
  final Profile posterProfile;

  PostProfile({@required this.post, @required this.posterProfile});
}
