import 'dart:html';

import 'package:angular/angular.dart';
import 'package:intl/intl.dart';
import 'package:osiguranje/models/question_comment.dart';
import 'package:osiguranje/models/question.dart';
import 'package:osiguranje/services/firebase_service.dart';
import 'package:osiguranje/services/questions_service.dart';


@Component(
    selector: 'forum',
    templateUrl: 'forum_component.html',
    directives: const [CORE_DIRECTIVES],
    providers: const [QuestionsService]
)
class ForumComponent implements OnInit {
  final FirebaseService _fbService;
  ForumComponent(this._questionsService, this._fbService);

  final QuestionsService _questionsService;

  @Input()
  List<Question> questions;

  String hidden = 'hidden';
  String display = 'none';
  bool answers = true;

  @override
  ngOnInit() async {
    questions = (await _questionsService.getAllOnce());
  }

  answer(String idPitanje) async {
    var text = querySelectorAll('#textareaOdgovor');
    if (hidden == 'hidden') {
      text[0].style.visibility = 'visible';
      hidden = 'visible';

      text[0].style.display = 'block';
      display = 'block';
    }
    else {
      text[0].style.visibility = 'hidden';
      hidden = 'hidden';

      text[0].style.display = 'none';
      display = 'none';
    }
  }

  comment(String questionId) async {
    Question q = await _questionsService.getOnce(questionId);
    var comment = querySelectorAll('#komentar');
    TextAreaElement element = comment[0];

    if (element.value != "") {
      num commentId;
      if (q.comments != null) {
        commentId = q.comments.length + 1;
      }
      else {
        commentId = 1;
        q.comments = new List<QuestionComment>();
      }

      var now = new DateTime.now();
      var formatter = new DateFormat('yyyy-MM-dd');
      String formatted = formatter.format(now);

      q.comments.add(new QuestionComment()
        ..id = commentId.toString()
        ..personalName = _fbService.user.displayName
        ..comment = element.value
        ..date = formatted);

      answer(questionId);
    }
  }

  askQuestion() async {
    TextAreaElement element = querySelector('#pitanje');

    if (element.value != "") {
      var now = new DateTime.now();
      var formatter = new DateFormat('yyyy-MM-dd');
      String formatted = formatter.format(now);

      _questionsService.save(new Question()
        ..personalName = _fbService.user.displayName
        ..question = element.value
        ..date = formatted
        ..comments = null);
    }
  }


}