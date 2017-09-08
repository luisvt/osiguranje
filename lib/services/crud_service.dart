import 'dart:async';
import "package:angular/core.dart";
import 'package:dson/dson.dart';
import 'package:firebase/firebase.dart';
import 'package:osiguranje/services/firebase_service.dart';

abstract class BaseModel {
  String id;
}

abstract class CRUDService<T extends BaseModel> {

  final String _api;
  List<T> items;
  Stream<List<T>> itemsChange;

  final FirebaseService _fbService;
  DatabaseReference get ref => _fbService.fbDatabase.ref(_api);
  DatabaseReference refById(String id) => _fbService.fbDatabase.ref('$_api/$id');

  CRUDService(this._fbService, this._api);

  Future<T> getOnce(String id) async =>
      fromMap((await refById(id).once('value')).snapshot.val() ?? {}, T);

  Stream<T> get(id) =>
      refById(id).onValue.map((e) =>
          fromMap(e.snapshot.val() ?? {}, T));

  Stream<List<T>> getAll() =>
      ref.onValue.map((e) =>
          fromMapList(e.snapshot.val(), T));

  Future<List<T>> getAllOnce() async =>
      fromMapList((await ref.once('value')).snapshot.val() ?? [{}], T);

  save(T item) {
    refById(item.id ??= ref.push().key).set(toMap(item));
  }
}
