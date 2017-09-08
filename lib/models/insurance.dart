library osiguranje.models.insurance;

import 'package:dson/dson.dart';
import 'package:osiguranje/services/crud_service.dart';

part 'insurance.g.dart';

@serializable
class Insurance extends _$InsuranceSerializable implements BaseModel {
  String id;
  String name;
  String description;
  String type;
  String longDescription;
}
