import "package:angular/core.dart";
import 'package:osiguranje/models/insurance.dart';
import 'package:osiguranje/services/crud_service.dart';
import 'package:osiguranje/services/firebase_service.dart';

@Injectable()
class InsurancesService extends CRUDService<Insurance>{
  InsurancesService(FirebaseService _fbService) : super(_fbService, 'insurances');
}
