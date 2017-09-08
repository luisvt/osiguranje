library osiguranje.models.question;

import 'package:dson/dson.dart';
import 'package:osiguranje/models/question_comment.dart';
import 'package:osiguranje/services/crud_service.dart';

part 'question.g.dart';

@serializable
class Question extends _$QuestionSerializable implements BaseModel {
  String id;
  String personalName;
  String question;
  String date;
  List<QuestionComment> comments;
}