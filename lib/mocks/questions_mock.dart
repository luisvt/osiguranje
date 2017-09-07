import 'package:intl/intl.dart';
import 'package:osiguranje/mocks/comments_mock.dart';
import 'package:osiguranje/models/question.dart';

var now = new DateTime.now();
var formatter = new DateFormat('yyyy-MM-dd');
String formatted = formatter.format(now);

List<Question> questions = [

  new Question(
      1, 'Azra', 'Kako se najčešće određuje vrednost za osiguranja imovine?',
      formatted, comments),


];
