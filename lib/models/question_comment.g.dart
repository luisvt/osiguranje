// GENERATED CODE - DO NOT MODIFY BY HAND

part of osiguranje.models.question_comment;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$QuestionCommentSerializable extends SerializableMap {
  String get id;
  String get personalName;
  String get comment;
  String get date;
  void set id(String v);
  void set personalName(String v);
  void set comment(String v);
  void set date(String v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'personalName':
        return personalName;
      case 'comment':
        return comment;
      case 'date':
        return date;
    }
    throwFieldNotFoundException(__key, 'QuestionComment');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'personalName':
        personalName = __value;
        return;
      case 'comment':
        comment = __value;
        return;
      case 'date':
        date = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'QuestionComment');
  }

  Iterable<String> get keys => QuestionCommentClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_QuestionComment__Constructor(params) => new QuestionComment();

const $$QuestionComment_fields_id = const DeclarationMirror(type: String);
const $$QuestionComment_fields_personalName =
    const DeclarationMirror(type: String);
const $$QuestionComment_fields_comment = const DeclarationMirror(type: String);
const $$QuestionComment_fields_date = const DeclarationMirror(type: String);

const QuestionCommentClassMirror =
    const ClassMirror(name: 'QuestionComment', constructors: const {
  '': const FunctionMirror(
      parameters: const {}, call: _QuestionComment__Constructor)
}, fields: const {
  'id': $$QuestionComment_fields_id,
  'personalName': $$QuestionComment_fields_personalName,
  'comment': $$QuestionComment_fields_comment,
  'date': $$QuestionComment_fields_date
}, getters: const [
  'id',
  'personalName',
  'comment',
  'date'
], setters: const [
  'id',
  'personalName',
  'comment',
  'date'
], superinterfaces: const [
  BaseModel
]);
