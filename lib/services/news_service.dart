import "package:angular/core.dart";
import 'package:osiguranje/models/news.dart';
import 'package:osiguranje/services/crud_service.dart';
import 'package:osiguranje/services/firebase_service.dart';

@Injectable()
class NewsService extends CRUDService<News> {
  NewsService(FirebaseService fbService) : super(fbService, 'news');
}
