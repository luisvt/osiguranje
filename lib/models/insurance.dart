library osiguranje.models.insurance;

import 'package:dson/dson.dart';

part 'package:osiguranje/models/insurance.g.dart';

@serializable
class Insurance extends _$InsuranceSerializable {
  @uId String key;
  String name;
  String description;
  String type;
  String longDescription;
}
