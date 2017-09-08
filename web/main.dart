// Copyright (c) 2017, Dzenana. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.
library osiguranje.main;

import 'package:angular/angular.dart';
import 'package:built_mirrors/built_mirrors.dart';
import 'package:osiguranje/app_component.dart';
import 'package:osiguranje/models/insurance.dart';
import 'package:osiguranje/models/news.dart';
import 'package:osiguranje/models/question.dart';
import 'package:osiguranje/models/question_comment.dart';

part 'main.g.dart';

void main() {
  _initMirrors();

  bootstrap(AppComponent);
}
