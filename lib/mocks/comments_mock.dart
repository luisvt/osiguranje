import 'package:intl/intl.dart';
import 'package:osiguranje/models/comment.dart';

var now = new DateTime.now();
var formatter = new DateFormat('yyyy-MM-dd');
String formatted = formatter.format(now);

List<QuestionComment> comments = [new QuestionComment(
    1, 'Emir', 'Određuje se prema građevinskoj vrednosti nekretnine. '
    'Potrebno je proceniti i utvrditi Sumu osiguranja koja bi u slučaju nastanka štetnog događaja bila dovoljna za '
    'vraćanje nekretnine u prvobitno stanje.', formatted)
];



