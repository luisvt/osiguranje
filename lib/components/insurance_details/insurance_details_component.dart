import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:osiguranje/models/insurance.dart';
import 'package:osiguranje/services/insurances_service.dart';

@Component(
  selector: 'insurance-details',
  templateUrl: 'insurance_details_component.html',
  directives: const [CORE_DIRECTIVES],
  providers: const [InsurancesService]
)
class InsuranceDetailsComponent implements OnInit {
  InsuranceDetailsComponent(this._insuranceService, this._routeParams);

  InsurancesService _insuranceService;
  RouteParams _routeParams;
  Insurance insurance;


  @override
  ngOnInit() async {
    var id = _routeParams.get('id');
    insurance = (await _insuranceService.getOnce(id));
  }
}
