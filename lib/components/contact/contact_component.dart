import 'dart:html';
import 'package:angular/angular.dart';


@Component(
  selector: 'contact',
  templateUrl: 'contact_component.html',
)
class ContactComponent {

  bool hidden = true;

  send() {
    querySelector('#poruka').hidden = hidden;

    querySelector('#uspjesnaPoruka').hidden = !hidden;
  }
}