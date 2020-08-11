import 'comments.dart';
import 'package:meta/meta.dart';

import 'profile.dart';
class CommentProfile {
  final Comment comment;
  final Profile profile;

  CommentProfile({@required this.comment, @required this.profile});
}
