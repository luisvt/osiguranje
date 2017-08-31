import 'package:angular/angular.dart';
import 'package:osiguranje11082017_v3/Servis/Service.dart';
import 'package:osiguranje11082017_v3/Vijesti/Vijest.dart';

@Component(
  selector: 'pocetna',
  templateUrl: 'pocetna.html',
  directives: const [CORE_DIRECTIVES],
)
class PocetnaComponent implements OnInit {

  PocetnaComponent(this._serviceVijesti);

  @Input()
  List<Vijest> vijesti;
  Service _serviceVijesti;

  @override
  ngOnInit() async {
    vijesti = await(_serviceVijesti.getVijesti());
  }
}