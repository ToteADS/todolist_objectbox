import 'package:todolist/app/modules/home/domain/entities/pessoa.dart';
import 'package:todolist/app/modules/home/domain/repositories/i_todo_repository.dart';
import 'package:todolist/app/modules/home/presenter/store/home_store.dart';
import 'package:asuka/asuka.dart' as asuka;

abstract class IPessoaSaveUc {
  save(Pessoa pessoa);
}

class PessoaSaveUc implements IPessoaSaveUc {
  final ITodoRepository repository;
  final HomeStore store;

  PessoaSaveUc(
    this.repository,
    this.store,
  );

  @override
  save(Pessoa pessoa) async {
    try {
      var response = await repository.save(pessoa);
      asuka.AsukaSnackbar.success("${response.nome} Salva").show();
      store.add(pessoa);
    } catch (e) {
      asuka.AsukaSnackbar.alert("Erro ao Salvar pessoa").show();
    }
  }
}
