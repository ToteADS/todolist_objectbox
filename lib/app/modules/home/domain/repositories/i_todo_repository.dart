
import '../entities/pessoa.dart';

abstract class ITodoRepository {
  Future<Pessoa> save(Pessoa pessoa);
  Future<Pessoa> update(Pessoa pessoa);
  Future<List<Pessoa>> getAll();
  Future<void> remove(Pessoa pessoa);


}
