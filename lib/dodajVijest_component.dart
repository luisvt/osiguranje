import 'dart:html';
import 'package:angular/angular.dart';
import 'package:intl/intl.dart';
import 'package:osiguranje11082017_v3/Servis/Service.dart';
import 'package:osiguranje11082017_v3/Vijesti/Vijest.dart';


@Component(
    selector: 'dodajVijest',
    templateUrl: 'dodajVijest.html',
    directives: const [CORE_DIRECTIVES],
    providers: const [Service]
)
class DodajVijestComponent implements OnInit {

  DodajVijestComponent(this._vijestService);

  Service _vijestService;

  @Input()
  List<Vijest> vijestiList;

  @override
  ngOnInit() async {
    vijestiList = (await _vijestService.getVijesti());
  }

  DodajVijest() async {
    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy-MM-dd');
    String formatted = formatter.format(now);

    TextAreaElement elementVijest = querySelector('#vijest');
    InputElement elementNaslov = querySelector('#naslov');
    InputElement elementSlika = querySelector('#slika');
    vijestiList.add(new Vijest(
        2, elementNaslov.value, elementVijest.value, formatted,
        'images/`logo@2x.png'));
  }
}