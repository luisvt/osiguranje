import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:osiguranje11082017_v3/Osiguranje/osiguranje.dart';
import 'package:osiguranje11082017_v3/Servis/Service.dart';


@Component(
    selector: 'planosiguranja',
    templateUrl: 'planosiguranja.html',
    directives: const [CORE_DIRECTIVES, ROUTER_DIRECTIVES],
    providers: const [Service]
)
class PlanOsiguranjaComponent implements OnInit {

  PlanOsiguranjaComponent(this._osiguranjeService);

  Service _osiguranjeService;

  @Input()
  List<Osiguranje> osiguranja;

  @override
  ngOnInit() async {
    osiguranja = (await _osiguranjeService.getOsiguranja());
  }
}