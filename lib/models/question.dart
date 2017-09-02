import 'package:osiguranje/models/comment.dart';


class Question {
  Question(this.id, this.personalName, this.question, this.date, this.comments);

  num id;
  String personalName;
  String question;
  String date;
  List<QuestionComment> comments;

  String toString() => '$personalName';
}