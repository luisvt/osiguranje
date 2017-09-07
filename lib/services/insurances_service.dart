import 'dart:async';
import "package:angular/core.dart";
import 'package:dson/dson.dart';
import 'package:firebase/firebase.dart';
import 'package:osiguranje/models/insurance.dart';
import 'package:osiguranje/services/firebase_service.dart';

@Injectable()
class InsurancesService {
  List<Insurance> insurances;
  Stream<List<Insurance>> insurancesChange;

  final FirebaseService _fbService;
  DatabaseReference get _ref => _fbService.fbDatabase.ref('insurances');
  DatabaseReference _refById(String id) => _fbService.fbDatabase.ref('insurances/$id');

  InsurancesService(this._fbService);

  Future<Insurance> getOnce(String id) async =>
      fromMap((await _refById(id).once('value')).snapshot.val(), Insurance);

  Stream<Insurance> get(id) =>
      _refById(id).onValue.map((e) =>
          fromMap(e.snapshot.val(), Insurance));

  Stream<List<Insurance>> getAll() =>
    _ref.onValue.map((e) =>
        fromMapList(e.snapshot.val(), Insurance));

  Future<List<Insurance>> getAllOnce() async =>
    fromMapList((await _ref.once('value')).snapshot.val(), Insurance);

  save(Insurance insurance) {
    _refById(insurance.key ?? _ref.push().key).set(toMap(insurance));
  }


}
