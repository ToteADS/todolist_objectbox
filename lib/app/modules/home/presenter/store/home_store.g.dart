// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$pessoasListAtom =
      Atom(name: '_HomeStoreBase.pessoasList', context: context);

  @override
  ObservableList<Pessoa> get pessoasList {
    _$pessoasListAtom.reportRead();
    return super.pessoasList;
  }

  @override
  set pessoasList(ObservableList<Pessoa> value) {
    _$pessoasListAtom.reportWrite(value, super.pessoasList, () {
      super.pessoasList = value;
    });
  }

  late final _$buscarListaPessoasAsyncAction =
      AsyncAction('_HomeStoreBase.buscarListaPessoas', context: context);

  @override
  Future<void> buscarListaPessoas() {
    return _$buscarListaPessoasAsyncAction
        .run(() => super.buscarListaPessoas());
  }

  late final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase', context: context);

  @override
  void add(Pessoa pessoa) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.add');
    try {
      return super.add(pessoa);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(Pessoa pessoa) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.remove');
    try {
      return super.remove(pessoa);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pessoasList: ${pessoasList}
    ''';
  }
}
