import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:osiguranje/models/insurance.dart';
import 'package:osiguranje/services/Service.dart';

@Component(
  selector: 'insurance-details',
  templateUrl: 'insurance_details_component.html',
  directives: const [CORE_DIRECTIVES],
  providers: const [Service]
)
class InsuranceDetailsComponent
    implements OnInit {
  InsuranceDetailsComponent(this._insuranceService, this._routeParams);

  Service _insuranceService;
  RouteParams _routeParams;
  @Input() Insurance insurance;


  @override
  ngOnInit() async {
    var id = int.parse(_routeParams.get('id'));
    insurance = (await _insuranceService.GetOsiguranjeById(id));
  }
}
