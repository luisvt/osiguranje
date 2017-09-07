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
  Future<List<Question>> getPitanja() async => questions;

  Future<Question> GetById(num id) async =>
      questions.firstWhere((pitanje) => pitanje.id == id);

  Future<int> GetMaxPitanje() async => questions.length;

  //osiguranje
  Future<List<Insurance>> getOsiguranja() async => insruances;

  Future<Insurance> GetByNameOsiguranje(String naziv) async =>
      insruances.firstWhere((osiguranje) => osiguranje.name == naziv);

  //korisnici
  Future<String> getTipLogovanogKorisnika() async =>
      users.first.userType;

  Future<List<User>> getKorisnici() async => users;

  //vijesti
  Future<List<News>> getVijesti() async => news;

  Future<News> GetVijestById(num id) async =>
      news.firstWhere((v) => v.id == id);
}