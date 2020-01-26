// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mystore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyStore on _MyStoreBase, Store {
  final _$valueAtom = Atom(name: '_MyStoreBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$_MyStoreBaseActionController = ActionController(name: '_MyStoreBase');

  @override
  dynamic setValue() {
    final _$actionInfo = _$_MyStoreBaseActionController.startAction();
    try {
      return super.setValue();
    } finally {
      _$_MyStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
