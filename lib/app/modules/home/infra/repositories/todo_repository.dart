import 'package:todolist/app/database/object_box_database.dart';
import 'package:todolist/app/modules/home/domain/entities/pessoa.dart';
import 'package:todolist/app/modules/home/domain/repositories/i_todo_repository.dart';
import '../../../../../objectbox.g.dart';

class TodoRepository implements ITodoRepository {
  late final ObjectBoxDatabase _database;

  TodoRepository(this._database);

  Future<Box<Pessoa>> _getBox() async {
    final store = await _database.getStore();
    return store.box();
  }

  @override
  Future<List<Pessoa>> getAll() async {
    final Box<Pessoa> box = await _getBox();
    return box.getAll();
  }

  @override
  remove(Pessoa pessoa) async {
    final Box<Pessoa> box = await _getBox();
    box.remove(pessoa.id);
  }

  @override
  Future<Pessoa> save(Pessoa pessoa) async {
    final Box<Pessoa> box = await _getBox();
    var response = box.put(pessoa);
    var pessoaSalva = box.get(response);
    if (pessoaSalva != null) {
      return pessoaSalva;
    } else {
      throw ObjectBoxException("error ao salvar ${pessoa.nome}");
    }
  }

  @override
  Future<Pessoa> update(Pessoa pessoa) async {
    final Box<Pessoa> box = await _getBox();
    var response = box.put(pessoa);
    var pessoaSalva = box.get(response);
    if (pessoaSalva != null) {
      return pessoaSalva;
    } else {
      throw ObjectBoxException("error ao atualizar ${pessoa.nome}");
    }
  }
}
