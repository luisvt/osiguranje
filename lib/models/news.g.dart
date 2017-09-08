// GENERATED CODE - DO NOT MODIFY BY HAND

part of osiguranje.models.news;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$NewsSerializable extends SerializableMap {
  String get id;
  String get address;
  String get title;
  String get news;
  String get date;
  String get picture;
  void set id(String v);
  void set address(String v);
  void set title(String v);
  void set news(String v);
  void set date(String v);
  void set picture(String v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'address':
        return address;
      case 'title':
        return title;
      case 'news':
        return news;
      case 'date':
        return date;
      case 'picture':
        return picture;
    }
    throwFieldNotFoundException(__key, 'News');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'address':
        address = __value;
        return;
      case 'title':
        title = __value;
        return;
      case 'news':
        news = __value;
        return;
      case 'date':
        date = __value;
        return;
      case 'picture':
        picture = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'News');
  }

  Iterable<String> get keys => NewsClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_News__Constructor(params) => new News();

const $$News_fields_id = const DeclarationMirror(type: String);
const $$News_fields_address = const DeclarationMirror(type: String);
const $$News_fields_title = const DeclarationMirror(type: String);
const $$News_fields_news = const DeclarationMirror(type: String);
const $$News_fields_date = const DeclarationMirror(type: String);
const $$News_fields_picture = const DeclarationMirror(type: String);

const NewsClassMirror = const ClassMirror(name: 'News', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _News__Constructor)
}, fields: const {
  'id': $$News_fields_id,
  'address': $$News_fields_address,
  'title': $$News_fields_title,
  'news': $$News_fields_news,
  'date': $$News_fields_date,
  'picture': $$News_fields_picture
}, getters: const [
  'id',
  'address',
  'title',
  'news',
  'date',
  'picture'
], setters: const [
  'id',
  'address',
  'title',
  'news',
  'date',
  'picture'
], superinterfaces: const [
  BaseModel
]);
