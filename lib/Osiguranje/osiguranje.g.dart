// GENERATED CODE - DO NOT MODIFY BY HAND

part of osiguranje.models.osiguranje;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$OsiguranjeSerializable extends SerializableMap {
  String get naziv;
  String get opis;
  String get tip;
  num get id;
  String get duziOpis;
  void set naziv(String v);
  void set opis(String v);
  void set tip(String v);
  void set id(num v);
  void set duziOpis(String v);
  String toString();

  operator [](Object key) {
    switch (key) {
      case 'naziv':
        return naziv;
      case 'opis':
        return opis;
      case 'tip':
        return tip;
      case 'id':
        return id;
      case 'duziOpis':
        return duziOpis;
      case 'toString':
        return toString;
    }
    throwFieldNotFoundException(key, 'Osiguranje');
  }

  operator []=(Object key, value) {
    switch (key) {
      case 'naziv':
        naziv = value;
        return;
      case 'opis':
        opis = value;
        return;
      case 'tip':
        tip = value;
        return;
      case 'id':
        id = value;
        return;
      case 'duziOpis':
        duziOpis = value;
        return;
    }
    throwFieldNotFoundException(key, 'Osiguranje');
  }

  Iterable<String> get keys => OsiguranjeClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_Osiguranje__Constructor(params) => new Osiguranje();

const $$Osiguranje_fields_naziv = const DeclarationMirror(type: String);
const $$Osiguranje_fields_opis = const DeclarationMirror(type: String);
const $$Osiguranje_fields_tip = const DeclarationMirror(type: String);
const $$Osiguranje_fields_id = const DeclarationMirror(type: num);
const $$Osiguranje_fields_duziOpis = const DeclarationMirror(type: String);

const OsiguranjeClassMirror =
    const ClassMirror(name: 'Osiguranje', constructors: const {
  '': const FunctionMirror(parameters: const {}, call: _Osiguranje__Constructor)
}, fields: const {
  'naziv': $$Osiguranje_fields_naziv,
  'opis': $$Osiguranje_fields_opis,
  'tip': $$Osiguranje_fields_tip,
  'id': $$Osiguranje_fields_id,
  'duziOpis': $$Osiguranje_fields_duziOpis
}, getters: const [
  'naziv',
  'opis',
  'tip',
  'id',
  'duziOpis'
], setters: const [
  'naziv',
  'opis',
  'tip',
  'id',
  'duziOpis'
], methods: const {
  'toString': const FunctionMirror(
    name: 'toString',
    returnType: String,
  )
});
