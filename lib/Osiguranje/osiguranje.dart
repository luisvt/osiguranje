library osiguranje.models.osiguranje;

import 'package:dson/dson.dart';

part 'osiguranje.g.dart';

@serializable
class Osiguranje extends _$OsiguranjeSerializable {
  String naziv;
  String opis;
  String tip;
  num id;
  String duziOpis;

  String toString() => '{id: $id, naziv: $naziv, opis: $opis, tip: $tip, duziOpis: $duziOpis}';
}
