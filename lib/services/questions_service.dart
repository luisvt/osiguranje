import "package:angular/core.dart";
import 'package:osiguranje/models/question.dart';
import 'package:osiguranje/services/crud_service.dart';
import 'package:osiguranje/services/firebase_service.dart';

@Injectable()
class QuestionsService extends CRUDService<Question> {
  QuestionsService(FirebaseService fbService) : super(fbService, 'questions');
}
