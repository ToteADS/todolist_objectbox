// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import 'package:todolist/app/modules/home/domain/entities/pessoa.dart';
import 'package:todolist/app/modules/home/domain/repositories/i_todo_repository.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final ITodoRepository repository;

  @action
  Future<void> buscarListaPessoas() async {
    var response = await repository.getAll();
    pessoasList.addAll(response);
  }

  _HomeStoreBase(this.repository) {
    buscarListaPessoas();
  }

  @observable
  ObservableList<Pessoa> pessoasList = ObservableList<Pessoa>();

  @action
  void add(Pessoa pessoa) {
    pessoasList.add(pessoa);
  }

  @action
  void remove(Pessoa pessoa) {
    pessoasList.removeWhere(
      (element) => element.id == pessoa.id,
    );
  }
}
