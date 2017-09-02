import 'dart:html';
import 'package:angular/angular.dart';
import 'package:intl/intl.dart';
import 'package:osiguranje/models/user.dart';
import 'package:osiguranje/services/Service.dart';
import 'package:osiguranje/models/comment.dart';
import 'package:osiguranje/models/question.dart';


@Component(
    selector: 'forum',
    templateUrl: 'forum_component.html',
    directives: const [CORE_DIRECTIVES],
    providers: const [Service]
)
class ForumComponent implements OnInit {

  ForumComponent(this._questionService);

  final Service _questionService;

  @Input()
  List<Question> questions;

  String hidden = 'hidden';
  String display = 'none';
  bool answers = true;

  @override
  ngOnInit() async {
    questions = (await _questionService.getPitanja());
  }

  answer(num idPitanje) async {
    var text = querySelectorAll('#textareaOdgovor');
    if (hidden == 'hidden') {
      text[idPitanje - 1].style.visibility = 'visible';
      hidden = 'visible';

      text[idPitanje - 1].style.display = 'block';
      display = 'block';
    }
    else {
      text[idPitanje - 1].style.visibility = 'hidden';
      hidden = 'hidden';

      text[idPitanje - 1].style.display = 'none';
      display = 'none';
    }
  }

  comment(int pitanjeId) async {
    Question p = await _questionService.GetById(pitanjeId);
    var komentar = querySelectorAll('#komentar');
    TextAreaElement element = komentar[pitanjeId - 1];

    if (element.value != "") {
      List<User> korisnici = await _questionService.getKorisnici();

      num idKomentara;
      if (p.comments != null) {
        idKomentara = p.comments.length + 1;
      }
      else {
        idKomentara = 1;
        p.comments = new List<QuestionComment>();
      }

      var now = new DateTime.now();
      var formatter = new DateFormat('yyyy-MM-dd');
      String formatted = formatter.format(now);

      p.comments.add(new QuestionComment(
          idKomentara, korisnici.first.name, element.value, formatted));

      answer(pitanjeId);
    }
  }

  askQuestion() async {
    num idPitanje = await _questionService.GetMaxPitanje();
    List<User> korisnici = await _questionService.getKorisnici();
    TextAreaElement element = querySelector('#pitanje');

    if (element.value != "") {
      var now = new DateTime.now();
      var formatter = new DateFormat('yyyy-MM-dd');
      String formatted = formatter.format(now);

      questions.add(new Question(
          idPitanje + 1, korisnici.first.name, element.value, formatted,
          null));
    }
  }


}