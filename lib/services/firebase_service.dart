import 'dart:async';
import "package:angular/core.dart";
import 'package:firebase/firebase.dart';

@Injectable()
class FirebaseService {
  Database fbDatabase;
  User user;
  Stream<User> userChange;

  FirebaseService() {

    initializeApp(
        apiKey: "AIzaSyA6RUu8b99WoH-lywPlvn0rlAOvJDHcTkE",
        authDomain: "osiguranje-8f1f4.firebaseapp.com",
        databaseURL: "https://osiguranje-8f1f4.firebaseio.com",
        storageBucket: "osiguranje-8f1f4.appspot.com");
    fbDatabase = database();
    userChange = auth().onAuthStateChanged..listen((u) => user = u);
  }

}
