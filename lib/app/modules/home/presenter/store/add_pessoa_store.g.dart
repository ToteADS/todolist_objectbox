// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_pessoa_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddPessoaStore on AddPessoaStoreBase, Store {
  late final _$nomeAtom =
      Atom(name: 'AddPessoaStoreBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$apelidoAtom =
      Atom(name: 'AddPessoaStoreBase.apelido', context: context);

  @override
  String get apelido {
    _$apelidoAtom.reportRead();
    return super.apelido;
  }

  @override
  set apelido(String value) {
    _$apelidoAtom.reportWrite(value, super.apelido, () {
      super.apelido = value;
    });
  }

  late final _$idadeAtom =
      Atom(name: 'AddPessoaStoreBase.idade', context: context);

  @override
  int get idade {
    _$idadeAtom.reportRead();
    return super.idade;
  }

  @override
  set idade(int value) {
    _$idadeAtom.reportWrite(value, super.idade, () {
      super.idade = value;
    });
  }

  late final _$telefoneDigitadoAtom =
      Atom(name: 'AddPessoaStoreBase.telefoneDigitado', context: context);

  @override
  String get telefoneDigitado {
    _$telefoneDigitadoAtom.reportRead();
    return super.telefoneDigitado;
  }

  @override
  set telefoneDigitado(String value) {
    _$telefoneDigitadoAtom.reportWrite(value, super.telefoneDigitado, () {
      super.telefoneDigitado = value;
    });
  }

  late final _$emailDigitadoAtom =
      Atom(name: 'AddPessoaStoreBase.emailDigitado', context: context);

  @override
  String get emailDigitado {
    _$emailDigitadoAtom.reportRead();
    return super.emailDigitado;
  }

  @override
  set emailDigitado(String value) {
    _$emailDigitadoAtom.reportWrite(value, super.emailDigitado, () {
      super.emailDigitado = value;
    });
  }

  late final _$AddPessoaStoreBaseActionController =
      ActionController(name: 'AddPessoaStoreBase', context: context);

  @override
  void nomeChange(String value) {
    final _$actionInfo = _$AddPessoaStoreBaseActionController.startAction(
        name: 'AddPessoaStoreBase.nomeChange');
    try {
      return super.nomeChange(value);
    } finally {
      _$AddPessoaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void apelidoChange(String value) {
    final _$actionInfo = _$AddPessoaStoreBaseActionController.startAction(
        name: 'AddPessoaStoreBase.apelidoChange');
    try {
      return super.apelidoChange(value);
    } finally {
      _$AddPessoaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void idadeChange(int value) {
    final _$actionInfo = _$AddPessoaStoreBaseActionController.startAction(
        name: 'AddPessoaStoreBase.idadeChange');
    try {
      return super.idadeChange(value);
    } finally {
      _$AddPessoaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void telefoneDigitadoChange(String value) {
    final _$actionInfo = _$AddPessoaStoreBaseActionController.startAction(
        name: 'AddPessoaStoreBase.telefoneDigitadoChange');
    try {
      return super.telefoneDigitadoChange(value);
    } finally {
      _$AddPessoaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void emailChange(String email) {
    final _$actionInfo = _$AddPessoaStoreBaseActionController.startAction(
        name: 'AddPessoaStoreBase.emailChange');
    try {
      return super.emailChange(email);
    } finally {
      _$AddPessoaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clean() {
    final _$actionInfo = _$AddPessoaStoreBaseActionController.startAction(
        name: 'AddPessoaStoreBase.clean');
    try {
      return super.clean();
    } finally {
      _$AddPessoaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
apelido: ${apelido},
idade: ${idade},
telefoneDigitado: ${telefoneDigitado},
emailDigitado: ${emailDigitado}
    ''';
  }
}
