// GENERATED CODE - DO NOT MODIFY BY HAND

part of osiguranje.models.question;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$QuestionSerializable extends SerializableMap {
  String get id;
  String get personalName;
  String get question;
  String get date;
  List<QuestionComment> get comments;
  void set id(String v);
  void set personalName(String v);
  void set question(String v);
  void set date(String v);
  void set comments(List<QuestionComment> v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'personalName':
        return personalName;
      case 'question':
        return question;
      case 'date':
        return date;
      case 'comments':
        return comments;
    }
    throwFieldNotFoundException(__key, 'Question');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'personalName':
        personalName = __value;
        return;
      case 'question':
        question = __value;
        return;
      case 'date':
        date = __value;
        return;
      case 'comments':
        comments = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Question');
  }

  Iterable<String> get keys => QuestionClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_Question__Constructor(params) => new Question();

const $$Question_fields_id = const DeclarationMirror(type: String);
const $$Question_fields_personalName = const DeclarationMirror(type: String);
const $$Question_fields_question = const DeclarationMirror(type: String);
const $$Question_fields_date = const DeclarationMirror(type: String);
const $$Question_fields_comments =
    const DeclarationMirror(type: const [List, QuestionComment]);

const QuestionClassMirror =
    const ClassMirror(name: 'Question', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _Question__Constructor)
}, fields: const {
  'id': $$Question_fields_id,
  'personalName': $$Question_fields_personalName,
  'question': $$Question_fields_question,
  'date': $$Question_fields_date,
  'comments': $$Question_fields_comments
}, getters: const [
  'id',
  'personalName',
  'question',
  'date',
  'comments'
], setters: const [
  'id',
  'personalName',
  'question',
  'date',
  'comments'
], superinterfaces: const [
  BaseModel
]);
