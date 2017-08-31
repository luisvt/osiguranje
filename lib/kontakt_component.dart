import 'dart:html';
import 'package:angular/angular.dart';


@Component(
  selector: 'kontakt',
  templateUrl: 'kontakt.html',
)
class KontaktComponent {

  bool skriveno = true;

  PosaljiUpit() {
    querySelector('#poruka').hidden = skriveno;

    querySelector('#uspjesnaPoruka').hidden = !skriveno;
  }
}