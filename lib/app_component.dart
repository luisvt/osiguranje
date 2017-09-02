// Copyright (c) 2017, Dzenana. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:firebase/firebase.dart' as fb;
import 'package:osiguranje/models/user.dart';
import 'package:osiguranje/models/insurance.dart';
import 'package:osiguranje/services/Service.dart';
import 'package:osiguranje/components/add_news/add_news_component.dart';
import 'package:osiguranje/components/forum/forum_component.dart';
import 'package:osiguranje/components/contact/contact_component.dart';
import 'package:osiguranje/components/about_us/about_us_component.dart';
import 'package:osiguranje/components/insurance_details/insurance_details_component.dart';
import 'package:osiguranje/components/insurance_plan/insurance_plan_component.dart';
import 'package:osiguranje/components/home/home_component.dart';
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
  const Route(path: '/home',
      name: 'Home',
      component: HomeComponent,
      useAsDefault: true),
  const Route(path: '/insurance-plan',
      name: 'InsurancePlan',
      component: InsurancePlanComponent),
  const Route(path: '/forum',
      name: 'Forum',
      component: ForumComponent),
  const Route(path: '/about-us', name: 'AboutUs', component: AboutUsComponent),
  const Route(path: '/contact', name: 'Contact', component: ContactComponent),
  const Route(
      path: '/add-news', name: 'AddNews', component: AddNewsComponent),
  const Route(path: '/insurance-details',
      name: 'InsuranceDetails',
      component: InsuranceDetailsComponent),
])
class AppComponent
    implements OnInit {

  AppComponent(this._service);

  List<Insurance> insurances;
  bool submitted = false;
  bool newNews = true;

  Service _service;
  User user = new User();

  num count = 0;
  var insurance;

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
      insurances = fromMapList(datasnapshot.val(), Insurance);
      print('osiguranja: $insurances');
    });
  }

  signIn() {
    if (user.email == 'dzenana@live.com') {
      submitted = !submitted;
      newNews = false;
    }

    if (user.email == 'azra@live.com') {
      submitted = !submitted;
      newNews = true;
    }
  }

  signOut() {
    submitted = false;
    newNews = true;
  }
}

