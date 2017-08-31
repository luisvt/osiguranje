import 'dart:html';
import 'package:angular/angular.dart';
import 'package:intl/intl.dart';
import 'package:osiguranje11082017_v3/Korisnici/korisnik.dart';
import 'package:osiguranje11082017_v3/Servis/Service.dart';
import 'package:osiguranje11082017_v3/Pitanja/komentar.dart';
import 'package:osiguranje11082017_v3/Pitanja/pitanje.dart';


@Component(
    selector: 'forumOsiguranje',
    templateUrl: 'forumOsiguranje.html',
    directives: const [CORE_DIRECTIVES],
    providers: const [Service]
)
class ForumOsiguranjeComponent implements OnInit {

  ForumOsiguranjeComponent(this._pitanjeService);

  final Service _pitanjeService;

  @Input()
  List<Pitanje> pitanjaList;

  String visible = 'hidden';
  String display = 'none';
  bool odgovori;

  @override
  ngOnInit() async {
    pitanjaList = (await _pitanjeService.getPitanja());

    List<Korisnik> korisnici = await _pitanjeService.getKorisnici();

    if (korisnici.first.ime == 'Prijavi se') {
      odgovori = true;
      querySelector('#postaviPitanje').style.visibility = 'hidden';
      querySelector('#postaviPitanje').style.display = 'none';
    }
    else {
      odgovori = false;
      querySelector('#postaviPitanje').style.visibility = 'visible';
      querySelector('#postaviPitanje').style.display = 'block';
    }
  }

  OdgovoriClick(num idPitanje) async {
    var text = querySelectorAll('#textareaOdgovor');
    if (visible == 'hidden') {
      text[idPitanje - 1].style.visibility = 'visible';
      visible = 'visible';

      text[idPitanje - 1].style.display = 'block';
      display = 'block';
    }
    else {
      text[idPitanje - 1].style.visibility = 'hidden';
      visible = 'hidden';

      text[idPitanje - 1].style.display = 'none';
      display = 'none';
    }
  }

  KomentarisiClick(int pitanjeId) async {
    Pitanje p = await _pitanjeService.GetById(pitanjeId);
    var komentar = querySelectorAll('#komentar');
    TextAreaElement element = komentar[pitanjeId - 1];

    if (element.value != "") {
      List<Korisnik> korisnici = await _pitanjeService.getKorisnici();

      num idKomentara;
      if (p.komentari != null) {
        idKomentara = p.komentari.length + 1;
      }
      else {
        idKomentara = 1;
        p.komentari = new List<Komentar>();
      }

      var now = new DateTime.now();
      var formatter = new DateFormat('yyyy-MM-dd');
      String formatted = formatter.format(now);

      p.komentari.add(new Komentar(
          idKomentara, korisnici.first.ime, element.value, formatted));

      OdgovoriClick(pitanjeId);
    }
  }

  PostaviPitanjeClick() async {
    num idPitanje = await _pitanjeService.GetMaxPitanje();
    List<Korisnik> korisnici = await _pitanjeService.getKorisnici();
    TextAreaElement element = querySelector('#pitanje');

    if (element.value != "") {
      var now = new DateTime.now();
      var formatter = new DateFormat('yyyy-MM-dd');
      String formatted = formatter.format(now);

      pitanjaList.add(new Pitanje(
          idPitanje + 1, korisnici.first.ime, element.value, formatted,
          null));
    }
  }


}