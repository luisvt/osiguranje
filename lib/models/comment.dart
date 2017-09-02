class QuestionComment {
  num id;
  String personalName;
  String comment;
  String date;

  String toString() => '$personalName';

  QuestionComment(this.id, this.personalName, this.comment, this.date);
}