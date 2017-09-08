// GENERATED CODE - DO NOT MODIFY BY HAND

part of osiguranje.models.insurance;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$InsuranceSerializable extends SerializableMap {
  String get id;
  String get name;
  String get description;
  String get type;
  String get longDescription;
  void set id(String v);
  void set name(String v);
  void set description(String v);
  void set type(String v);
  void set longDescription(String v);

  operator [](Object __key) {
    switch (__key) {
      case 'id':
        return id;
      case 'name':
        return name;
      case 'description':
        return description;
      case 'type':
        return type;
      case 'longDescription':
        return longDescription;
    }
    throwFieldNotFoundException(__key, 'Insurance');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'id':
        id = __value;
        return;
      case 'name':
        name = __value;
        return;
      case 'description':
        description = __value;
        return;
      case 'type':
        type = __value;
        return;
      case 'longDescription':
        longDescription = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'Insurance');
  }

  Iterable<String> get keys => InsuranceClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_Insurance__Constructor(params) => new Insurance();

const $$Insurance_fields_id = const DeclarationMirror(type: String);
const $$Insurance_fields_name = const DeclarationMirror(type: String);
const $$Insurance_fields_description = const DeclarationMirror(type: String);
const $$Insurance_fields_type = const DeclarationMirror(type: String);
const $$Insurance_fields_longDescription =
    const DeclarationMirror(type: String);

const InsuranceClassMirror =
    const ClassMirror(name: 'Insurance', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _Insurance__Constructor)
}, fields: const {
  'id': $$Insurance_fields_id,
  'name': $$Insurance_fields_name,
  'description': $$Insurance_fields_description,
  'type': $$Insurance_fields_type,
  'longDescription': $$Insurance_fields_longDescription
}, getters: const [
  'id',
  'name',
  'description',
  'type',
  'longDescription'
], setters: const [
  'id',
  'name',
  'description',
  'type',
  'longDescription'
], superinterfaces: const [
  BaseModel
]);
