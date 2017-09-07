import "package:angular/core.dart";
import 'package:osiguranje/services/firebase_service.dart';

@Injectable()
class CommentsService {
  FirebaseService fbService;

  CommentsService(this.fbService);

}
