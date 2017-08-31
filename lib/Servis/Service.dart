import 'dart:async';
import 'package:angular/angular.dart';
import 'package:osiguranje11082017_v3/Korisnici/korisnik.dart';
import 'package:osiguranje11082017_v3/Korisnici/korisnik_mock.dart';
import 'package:osiguranje11082017_v3/Osiguranje/osiguranja_mock.dart';
import 'package:osiguranje11082017_v3/Osiguranje/osiguranje.dart';
import 'package:osiguranje11082017_v3/Pitanja/pitanja_mock.dart';
import 'package:osiguranje11082017_v3/Pitanja/pitanje.dart';
import 'package:osiguranje11082017_v3/Vijesti/Vijest.dart';
import 'package:osiguranje11082017_v3/Vijesti/vijesti_mock.dart';


@Injectable()
class Service {
  //pitanja
  Future<List<Pitanje>> getPitanja() async => pitanja;

  Future<Pitanje> GetById(num id) async =>
      pitanja.firstWhere((pitanje) => pitanje.Id == id);

  Future<int> GetMaxPitanje() async => pitanja.length;

  //osiguranje
  Future<List<Osiguranje>> getOsiguranja() async => osiguranja;

  Future<Osiguranje> GetByNameOsiguranje(String naziv) async =>
      osiguranja.firstWhere((osiguranje) => osiguranje.naziv == naziv);

  Future<Osiguranje> GetOsiguranjeById(num id) async =>
      osiguranja.firstWhere((o) => o.id == id);

  //korisnici
  Future<String> getTipLogovanogKorisnika() async =>
      korisnici.first.tipKorisnika;

  Future<List<Korisnik>> getKorisnici() async => korisnici;

  //vijesti
  Future<List<Vijest>> getVijesti() async => vijesti;

  Future<Vijest> GetVijestById(num id) async =>
      vijesti.firstWhere((v) => v.Id == id);
}