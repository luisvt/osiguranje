library osiguranje.models.news;

import 'package:osiguranje/services/crud_service.dart';
import 'package:serializable/serializable.dart';

part 'news.g.dart';

@serializable
class News extends _$NewsSerializable implements BaseModel{
  String id;
  String address;
  String title;
  String news;
  String date;
  String picture;
}