// Copyright (c) 2017, Dzenana. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:firebase/firebase.dart' as fb;
import 'package:osiguranje11082017_v3/Korisnici/korisnik.dart';
import 'package:osiguranje11082017_v3/Osiguranje/osiguranje.dart';
import 'package:osiguranje11082017_v3/Servis/Service.dart';
import 'package:osiguranje11082017_v3/dodajVijest_component.dart';
import 'package:osiguranje11082017_v3/forumosiguranje_component.dart';
import 'package:osiguranje11082017_v3/kontakt_component.dart';
import 'package:osiguranje11082017_v3/onama_component.dart';
import 'package:osiguranje11082017_v3/osiguranjedetalji_component.dart';
import 'package:osiguranje11082017_v3/planosiguranja_component.dart';
import 'package:osiguranje11082017_v3/pocetna_component.dart';
import 'package:dson/dson.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const[CORE_DIRECTIVES, ROUTER_DIRECTIVES, formDirectives],
    providers: const [Service, ROUTER_PROVIDERS, const Provider(LocationStrategy, useClass: HashLocationStrategy)]
)
@RouteConfig(const[
  const Route(path: '/pocetna',
      name: 'Pocetna',
      component: PocetnaComponent,
      useAsDefault: true),
  const Route(path: '/planosigurnja',
      name: 'PlanOsiguranja',
      component: PlanOsiguranjaComponent),
  const Route(path: '/forum',
      name: 'ForumOsiguranja',
      component: ForumOsiguranjeComponent),
  const Route(path: '/onama', name: 'ONama', component: ONamaComponent),
  const Route(path: '/kontakt', name: 'Kontakt', component: KontaktComponent),
  const Route(
      path: '/novavijest', name: 'Vijest', component: DodajVijestComponent),
  const Route(path: '/vijestdetalji',
      name: 'OsiguranjeDetaljiComponent',
      component: OsiguranjeDetaljiComponent),
])
class AppComponent
    implements OnInit {

  AppComponent(this._service);

  @Input()
  List<Korisnik> korisnici;

  List<Osiguranje> osiguranja;
  bool submitted = false;
  bool novaVijest = true;

  Service _service;
  Korisnik korisnik;

  num count = 0;
  var osiguranje;

  @override
  ngOnInit() async {
    fb.initializeApp(
        apiKey: "AIzaSyA6RUu8b99WoH-lywPlvn0rlAOvJDHcTkE",
        authDomain: "osiguranje-8f1f4.firebaseapp.com",
        databaseURL: "https://osiguranje-8f1f4.firebaseio.com",
        storageBucket: "osiguranje-8f1f4.appspot.com"
    );
    fb.Database database = fb.database();
    fb.DatabaseReference ref = database.ref('osiguranja');

    ref.onValue.listen((e) {
      fb.DataSnapshot datasnapshot = e.snapshot;
      osiguranja = fromMapList(datasnapshot.val(), Osiguranje);
      print('osiguranja: $osiguranja');
    });


    korisnici = (await _service.getKorisnici());
    korisnik = new Korisnik('Prijavi se', '', '', 'user');
    korisnici.add(korisnik);
  }

  PrijaviSe() {
    if (korisnik.email == 'dzenana@live.com') {
      if (submitted == false) {
        korisnici.clear();
      }
      korisnik = new Korisnik('Dzenana', 'dzenana@live.com', '', 'admin');
      korisnici.add(korisnik);
      submitted = !submitted;
      novaVijest = false;
    }

    if (korisnik.email == 'azra@live.com') {
      if (submitted == false) {
        korisnici.clear();
      }
      korisnik = new Korisnik('Azra', 'azra@live.com', '', 'user');
      korisnici.add(korisnik);
      submitted = !submitted;
      novaVijest = true;
    }
  }

  OdjaviSe() {
    korisnici.clear();
    korisnik = new Korisnik('Prijavi se', '', '', 'user');
    korisnici.add(korisnik);
    submitted = false;
    novaVijest = true;
  }
}

