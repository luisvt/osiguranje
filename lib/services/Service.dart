import 'dart:async';
import 'package:angular/angular.dart';
import 'package:osiguranje/models/user.dart';
import 'package:osiguranje/mocks/users_mock.dart';
import 'package:osiguranje/mocks/insurances_mock.dart';
import 'package:osiguranje/models/insurance.dart';
import 'package:osiguranje/mocks/questions_mock.dart';
import 'package:osiguranje/models/question.dart';
import 'package:osiguranje/models/news.dart';
import 'package:osiguranje/mocks/news_mock.dart';


@Injectable()
class Service {
  //pitanja
  Future<List<Question>> getPitanja() async => pitanja;

  Future<Question> GetById(num id) async =>
      pitanja.firstWhere((pitanje) => pitanje.id == id);

  Future<int> GetMaxPitanje() async => pitanja.length;

  //osiguranje
  Future<List<Insurance>> getOsiguranja() async => osiguranja;

  Future<Insurance> GetByNameOsiguranje(String naziv) async =>
      osiguranja.firstWhere((osiguranje) => osiguranje.name == naziv);

  Future<Insurance> GetOsiguranjeById(num id) async =>
      osiguranja.firstWhere((o) => o.id == id);

  //korisnici
  Future<String> getTipLogovanogKorisnika() async =>
      korisnici.first.userType;

  Future<List<User>> getKorisnici() async => korisnici;

  //vijesti
  Future<List<News>> getVijesti() async => news;

  Future<News> GetVijestById(num id) async =>
      news.firstWhere((v) => v.id == id);
}