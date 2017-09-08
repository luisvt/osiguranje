library osiguranje.models.question_comment;

import 'package:osiguranje/services/crud_service.dart';
import 'package:serializable/serializable.dart';

part 'question_comment.g.dart';

@serializable
class QuestionComment extends _$QuestionCommentSerializable implements BaseModel {
  String id;
  String personalName;
  String comment;
  String date;
}