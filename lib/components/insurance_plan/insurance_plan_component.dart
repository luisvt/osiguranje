import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:osiguranje/models/insurance.dart';
import 'package:osiguranje/services/insurances_service.dart';


@Component(
    selector: 'insurance-plan',
    templateUrl: 'insurance_plan_component.html',
    directives: const [CORE_DIRECTIVES, ROUTER_DIRECTIVES],
    providers: const [InsurancesService]
)
class InsurancePlanComponent implements OnInit {

  InsurancePlanComponent(this._insuranceService);

  InsurancesService _insuranceService;

  @Input() List<Insurance> insurances;

  @override
  ngOnInit() async {
    insurances = (await _insuranceService.getAllOnce());
  }
}