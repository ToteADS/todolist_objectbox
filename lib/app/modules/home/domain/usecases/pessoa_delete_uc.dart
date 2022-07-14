import '../../presenter/store/home_store.dart';
import '../entities/pessoa.dart';
import '../repositories/i_todo_repository.dart';
import 'package:asuka/asuka.dart' as asuka;

abstract class IPessoaDeleteUc {
  delete(Pessoa pessoa);
}


class PessoaDeleteUc implements IPessoaDeleteUc{
  final ITodoRepository repository;
  final HomeStore store;

  PessoaDeleteUc(this.repository, this.store);
  
  @override
  delete(Pessoa pessoa) async{
    try {
      await repository.remove(pessoa);
      asuka.AsukaSnackbar.success("${pessoa.nome} Removido(a)").show();
      store.remove(pessoa);
    } catch (e) {
      asuka.AsukaSnackbar.alert("Erro ao Remover pessoa").show();
    }
  }
  
}