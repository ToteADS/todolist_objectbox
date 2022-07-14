
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/app/database/object_box_database.dart';
import 'package:todolist/app/modules/home/domain/usecases/pessoa_delete_uc.dart';
import 'package:todolist/app/modules/home/domain/usecases/pessoa_save_uc.dart';
import 'package:todolist/app/modules/home/infra/repositories/todo_repository.dart';
import 'package:todolist/app/modules/home/presenter/pages/add_pessoa_page.dart';
import 'package:todolist/app/modules/home/presenter/store/add_pessoa_store.dart';

import 'presenter/pages/home_page.dart';
import 'presenter/store/home_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore(i.get())),
    Bind.lazySingleton((i) => AddPessoaStore()),
    Bind.lazySingleton((i) => ObjectBoxDatabase()),
    Bind.lazySingleton((i) => TodoRepository(i.get())),
    Bind.lazySingleton((i) => PessoaSaveUc(i.get(),i.get())),
    Bind.lazySingleton((i) => PessoaDeleteUc(i.get(),i.get())),
    
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
    ChildRoute('/add', child: (_, args) =>  AddPessoaPage()),
  ];
}
